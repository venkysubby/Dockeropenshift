# Base image
FROM python:3.9-slim-buster

# Set working directory
WORKDIR /app

# Copy requirements file
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy source code
COPY app.py .
ENV FLASK_APP=app.py
EXPOSE 8080

# Set the command to run when the container starts
CMD ["flask", "run", "host=0.0.0.0"]
