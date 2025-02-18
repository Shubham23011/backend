# Use the official Python 3.12.3 image as the base image
FROM python:3.12.3

# Set the working directory to /appdocker pull postgres
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt ./

# Install the Python dependencies
RUN pip install --no-cache-dir  -r requirements.txt

# Copy the entire application code into the container
COPY . /app

# Expose the port the app runs on
EXPOSE 8000

# Start the FastAPI application
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
