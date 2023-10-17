# Use the NVIDIA TensorFlow base image
# https://catalog.ngc.nvidia.com/orgs/nvidia/containers/tensorflow/tags
FROM nvcr.io/nvidia/tensorflow:23.09-tf2-py3

# Install the Python packages listed in the "requirements.txt" file
COPY requirements.txt .
RUN pip install -r requirements.txt

# Set the working directory in the container
WORKDIR /app

# Copy the contents of the local "src" directory to the container's working directory
COPY src/ .

# Run the "src/main.py" script when the container is started
CMD ["python", "main.py"]
