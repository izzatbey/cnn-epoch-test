# Use an official Python runtime as a parent image
FROM python:3.8-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

# Install any needed dependencies specified in requirements.txt
RUN pip install numpy mnist

# Run the command to execute the Python script
CMD ["python", "cnn.py"]