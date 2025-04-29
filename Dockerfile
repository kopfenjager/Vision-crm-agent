# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Install system dependencies for dlib and other dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    g++ \
    wget \
    libopenblas-dev \
    liblapack-dev \
    libx11-dev \
    libprotobuf-dev \
    protobuf-compiler \
    libboost-all-dev \
    libboost-python-dev \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory in the container
WORKDIR /app

# Copy the local repository contents into the container
COPY . /app/

# Create a virtual environment
RUN python3 -m venv /opt/venv

# Install dependencies using pip within the virtual environment
RUN /opt/venv/bin/pip install --no-cache-dir -r requirements.txt

# Set PATH to use the virtual environment's binaries
ENV PATH="/opt/venv/bin:$PATH"

# Command to run the application
CMD ["python", "vision_crm_agent.py"]
# Use an official Python 
runtime as a parent image
FROM python:3.8-slim

# Install system dependencies for dlib and other dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    g++ \
    wget \
    libopenblas-dev \
    liblapack-dev \
    libx11-dev \
    libprotobuf-dev \
    protobuf-compiler \
    libboost-all-dev \
    libboost-python-dev \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory in the container
WORKDIR /app

# Copy the local repository contents into the container
COPY . /app/

# Create a virtual environment
RUN python3 -m venv /opt/venv

# Install dependencies using pip within the virtual environment
RUN /opt/venv/bin/pip install --no-cache-dir -r requirements.txt

# Set PATH to use the virtual environment's binaries
ENV PATH="/opt/venv/bin:$PATH"

# Command to run the application
CMD ["python", "vision_crm_agent.py"]
# Use an 
official Python 
runtime as a parent image
FROM python:3.8-slim

# Install system dependencies for dlib and other dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    g++ \
    wget \
    libopenblas-dev \
    liblapack-dev \
    libx11-dev \
    libprotobuf-dev \
    protobuf-compiler \
    libboost-all-dev \
    libboost-python-dev \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory in the container
WORKDIR /app

# Copy the local repository contents into the container
COPY . /app/

# Create a virtual environment
RUN python3 -m venv /opt/venv

# Install dependencies using pip within the virtual environment
RUN /opt/venv/bin/pip install --no-cache-dir -r requirements.txt

# Set PATH to use the virtual environment's binaries
ENV PATH="/opt/venv/bin:$PATH"

# Command to run the application
CMD ["python", "vision_crm_agent.py"]
# Use an 
official Python 
runtime as a parent image
FROM python:3.8-slim

# Install system dependencies for dlib and other dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    g++ \
    wget \
    libopenblas-dev \
    liblapack-dev \
    libx11-dev \
    libprotobuf-dev \
    protobuf-compiler \
    libboost-all-dev \
    libboost-python-dev \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory in the container
WORKDIR /app

# Copy the local repository contents into the container
COPY . /app/

# Create a virtual environment
RUN python3 -m venv /opt/venv

# Install dependencies using pip within the virtual environment
RUN /opt/venv/bin/pip install --no-cache-dir -r requirements.txt

# Set PATH to use the virtual environment's binaries
ENV PATH="/opt/venv/bin:$PATH"

# Command to run the application
CMD ["python", "vision_crm_agent.py"]
# Use an 
official Python 
runtime as a parent image
FROM python:3.8-slim

# Install system dependencies for dlib and other dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    g++ \
    wget \
    libopenblas-dev \
    liblapack-dev \
    libx11-dev \
    libprotobuf-dev \
    protobuf-compiler \
    libboost-all-dev \
    libboost-python-dev \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory in the container
WORKDIR /app

# Copy the local repository contents into the container
COPY . /app/

# Create a virtual environment
RUN python3 -m venv /opt/venv

# Install dependencies using pip within the virtual environment
RUN /opt/venv/bin/pip install --no-cache-dir -r requirements.txt

# Set PATH to use the virtual environment's binaries
ENV PATH="/opt/venv/bin:$PATH"

# Command to run the application
CMD ["python", "vision_crm_agent.py"]
# Use an 
official Python 
runtime as a parent image
FROM python:3.8-slim

# Install system dependencies for dlib and other dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    g++ \
    wget \
    libopenblas-dev \
    liblapack-dev \
    libx11-dev \
    libprotobuf-dev \
    protobuf-compiler \
    libboost-all-dev \
    libboost-python-dev \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory in the container
WORKDIR /app

# Copy the local repository contents into the container
COPY . /app/

# Create a virtual environment
RUN python3 -m venv /opt/venv

# Install dependencies using pip within the virtual environment
RUN /opt/venv/bin/pip install --no-cache-dir -r requirements.txt

# Set PATH to use the virtual environment's binaries
ENV PATH="/opt/venv/bin:$PATH"

# Command to run the application
CMD ["python", "vision_crm_agent.py"]
# Use an 
official Python 
runtime as a parent image
FROM python:3.8-slim

# Install system dependencies for dlib and other dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    g++ \
    wget \
    libopenblas-dev \
    liblapack-dev \
    libx11-dev \
    libprotobuf-dev \
    protobuf-compiler \
    libboost-all-dev \
    libboost-python-dev \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory in the container
WORKDIR /app

# Copy the local repository contents into the container
COPY . /app/

# Create a virtual environment
RUN python3 -m venv /opt/venv

# Install dependencies using pip within the virtual environment
RUN /opt/venv/bin/pip install --no-cache-dir -r requirements.txt

# Set PATH to use the virtual environment's binaries
ENV PATH="/opt/venv/bin:$PATH"

# Command to run the application
CMD ["python", "vision_crm_agent.py"]
# Use an 
official Python 
runtime as a parent image
FROM python:3.8-slim

# Install system dependencies for dlib and other dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    g++ \
    wget \
    libopenblas-dev \
    liblapack-dev \
    libx11-dev \
    libprotobuf-dev \
    protobuf-compiler \
    libboost-all-dev \
    libboost-python-dev \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory in the container
WORKDIR /app

# Copy the local repository contents into the container
COPY . /app/

# Create a virtual environment
RUN python3 -m venv /opt/venv

# Install dependencies using pip within the virtual environment
RUN /opt/venv/bin/pip install --no-cache-dir -r requirements.txt

# Set PATH to use the virtual environment's binaries
ENV PATH="/opt/venv/bin:$PATH"

# Command to run the application
CMD ["python", "vision_crm_agent.py"]
# Create a 
virtual 
environment and install dependencies
RUN python -m venv --copies /opt/venv && . /opt/venv/bin/activate && pip 
install -r requirements.txt
# Use an official 
Python runtime as a parent image
FROM python:3.8-slim

# Install system dependencies for dlib
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    g++ \
    wget \
    libopenblas-dev \
    liblapack-dev \
    libx11-dev \
    libprotobuf-dev \
    protobuf-compiler \
    libboost-all-dev \
    libboost-python-dev \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory in the container
WORKDIR /app

# Copy the local repository contents into the container
COPY . /app/

# Create a virtual environment and install dependencies
RUN python -m venv --copies /opt/venv && . /opt/venv/bin/activate && pip 
install -r requirements.txt

# Set PATH for the virtual environment
ENV PATH="/opt/venv/bin:$PATH"

# Command to run the application
CMD ["python", "app.py"]


