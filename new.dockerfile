# Use an official ubuntu latest as a parent image
FROM ubuntu:latest

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN apt-get update && apt-get install -y python3 python3-pip

# Run app.py when the container launches
CMD ["python3", "app.py"]