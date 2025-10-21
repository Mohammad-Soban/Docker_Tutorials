# Use an official Python runtime as a parent image
FROM python:3.13-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port on which the Flask application will run
EXPOSE 5000

# Defining the environment variable for Flask
ENV FLASK_APP=app.py

# Define the command to run the Flask application
CMD ["flask", "run", "--host=0.0.0.0"]