# Use an official python latest as a parent image
FROM python:latest

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY app.py .

# Expose the port the app will run on
EXPOSE 8000

# Run app.py when the container launches
CMD ["python", "app.py"]