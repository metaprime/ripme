# Use an official OpenJDK runtime as a parent image
FROM openjdk:21-jdk-slim

# Set the working directory
WORKDIR /app

# Install Maven and Gradle
RUN apt-get update && \
    apt-get install -y maven gradle && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Copy the current directory contents into the container at /app
COPY . /app

# Set the default command to run Maven
CMD ["mvn", "clean", "install"]
