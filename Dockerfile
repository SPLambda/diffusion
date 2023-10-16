# Use the NVIDIA TensorFlow base image
# https://catalog.ngc.nvidia.com/orgs/nvidia/containers/tensorflow/tags
FROM nvcr.io/nvidia/tensorflow:23.09-tf2-py3

# To have "nvidia-smi" available in the container
RUN apt update && \
    apt install nvidia-utils-535-server -y && \
    rm -rf /var/lib/apt/lists/*

# Set the working directory in the container
WORKDIR /app

# Copy the contents of the local "src" directory to the container's working directory
COPY src/ .

# Run the "src/main.py" script when the container is started
CMD ["python", "main.py"]
