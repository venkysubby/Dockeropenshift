# Base image
FROM python

# Set working directory
WORKDIR /app

# Copy requirements file
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy source code
COPY app.py .

# Set the command to run when the container starts
CMD ["python", "app.py"]
