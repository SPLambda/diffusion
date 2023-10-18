FROM python:3.12 AS nbconverter

# Set the working directory in the container
WORKDIR /app

# Install the Python packages listed in the "requirements_nbconverter.txt" file
COPY requirements_nbconverter.txt requirements.txt
RUN pip install -r requirements.txt

# Copy the solution notebook to the container's working directory
COPY ./src/solution.ipynb solution.ipynb

# Convert the solution notebook to a Python script
RUN jupyter nbconvert --to script solution.ipynb


# Use the NVIDIA TensorFlow base image
# https://catalog.ngc.nvidia.com/orgs/nvidia/containers/tensorflow/tags
FROM nvcr.io/nvidia/tensorflow:23.09-tf2-py3 AS trainer

# Remove the /workspace directory (it only contains some examples)
RUN rm -rf /workspace

# Set the working directory in the container
WORKDIR /app

# Install the Python packages listed in the "requirements.txt" file
COPY requirements_trainer.txt requirements.txt
RUN pip install -r requirements.txt

# Copy the main script to the container's working directory
COPY --from=nbconverter /app/solution.py main.py

# Run the "main.py" script when the container is started
CMD ["python", "main.py"]
