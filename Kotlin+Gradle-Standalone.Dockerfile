# Use an official OpenJDK runtime as a parent image
FROM openjdk:21-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Gradle wrapper and other project files to the working directory
COPY . /app

# Clean the application
RUN ./gradlew clean

# Build the application
RUN ./gradlew build

# Expose the port the application runs on
EXPOSE 8080

# Run the application
CMD ["/app/gradlew", "run", "--console=plain"]