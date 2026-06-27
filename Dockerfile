# Base image
FROM python:3.12-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the dependency file first
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Expose the port the app listens on
EXPOSE 8080

# Command to start the application
CMD ["python", "app.py"]