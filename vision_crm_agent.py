
# vision_crm_agent.py
# Flask API that receives an image, runs OCR + face crop, and uses GPT to structure the data

from flask import Flask, request, jsonify
import easyocr
import cv2
import face_recognition
import os
import numpy as np
import uuid
import openai
import json

app = Flask(__name__)

reader = easyocr.Reader(['en'])

# Configure OpenAI
openai.api_key = os.getenv("OPENAI_API_KEY")

# Create necessary folders
REFERENCE_FOLDER = "reference_faces"
os.makedirs(REFERENCE_FOLDER, exist_ok=True)

def preprocess_image(image):
    gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
    resized = cv2.resize(gray, None, fx=2.0, fy=2.0, interpolation=cv2.INTER_LINEAR)
    sharpened = cv2.filter2D(resized, -1, np.array([[0, -1, 0], [-1, 5, -1], [0, -1, 0]]))
    _, thresholded = cv2.threshold(sharpened, 120, 255, cv2.THRESH_BINARY)
    return thresholded

def extract_text(image_path):
    image = cv2.imread(image_path)
    processed = preprocess_image(image)
    results = reader.readtext(processed, detail=0)
    return "\n".join(results)

def crop_face(image_path, customer_id):
    image = face_recognition.load_image_file(image_path)
    face_locations = face_recognition.face_locations(image)
    if not face_locations:
        return None
    top, right, bottom, left = face_locations[0]
    face_crop = image[top:bottom, left:right]
    face_path = os.path.join(REFERENCE_FOLDER, f"{customer_id}_face.jpg")
    cv2.imwrite(face_path, cv2.cvtColor(face_crop, cv2.COLOR_RGB2BGR))
    return face_path

def ask_gpt_for_fields(ocr_text):
    prompt = f"""
Extract the following fields from the OCR text of a driver's license and return JSON with these fields only:
- First Name
- Middle Initial
- Last Name
- Street Address
- City
- State
- Zip Code
- Driver's License Number
- Date of Birth
- Expiration Date

OCR TEXT:
{ocr_text}
"""

    response = openai.ChatCompletion.create(
        model="gpt-4",
        messages=[{"role": "user", "content": prompt}],
        temperature=0.2
    )

    return response.choices[0].message["content"]

@app.route("/process-license", methods=["POST"])
def process_license():
    if "file" not in request.files:
        return jsonify({"error": "No file provided"}), 400

    file = request.files["file"]
    filename = f"temp_{uuid.uuid4().hex[:8]}.jpg"
    filepath = os.path.join("scanner_input", filename)
    os.makedirs("scanner_input", exist_ok=True)
    file.save(filepath)

    # Process file
    customer_id = uuid.uuid4().hex[:10]
    ocr_text = extract_text(filepath)
    face_path = crop_face(filepath, customer_id)
    gpt_output = ask_gpt_for_fields(ocr_text)

    # Final response
    response = {
        "Customer ID": customer_id,
        "Face Image": face_path if face_path else "Not found",
        "Extracted Data": json.loads(gpt_output)
    }

    return jsonify(response), 200

if __name__ == "__main__":
    import os
port = int(os.environ.get("PORT", 5000))
app.run(host="0.0.0.0", port=port)

