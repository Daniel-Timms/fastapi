# Use an official Python runtime as the base image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container
COPY . .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Command to run the uvicorn server
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "80"]

