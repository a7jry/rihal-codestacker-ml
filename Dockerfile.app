# Use a Python image
FROM python:3.8-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the application code into the container (app directory)
COPY ./app /app

# Copy the requirements.txt from the root directory (since it's outside the app folder)
COPY ./requirements.txt /app/requirements.txt

# Copy the models directory into the container
COPY ./models /models

# Copy the data directory into the container
COPY ./data /data

# Install dependencies
RUN pip install --no-cache-dir -r /app/requirements.txt

# Expose the port that your app will run on (default Flask port is 5000)
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]
