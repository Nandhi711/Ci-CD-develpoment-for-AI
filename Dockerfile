# Use official lightweight Python image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY . .

# Expose port 8080
EXPOSE 8080

# Use Gunicorn to serve the app
CMD ["gunicorn", "-b", "0.0.0.0:8080", "main:app"]
