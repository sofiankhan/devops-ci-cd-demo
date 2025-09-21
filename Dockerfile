# Use official Python base image
FROM python:3.9-slim

# Set working directory inside container
WORKDIR /app

# Copy dependencies file
COPY requirements.txt .

# Install dependencies
RUN pip install -r requirements.txt

# Copy project files
COPY . .

# Expose port 5000 for the Flask app
EXPOSE 5000

# Start the app
CMD ["python", "app.py"]
