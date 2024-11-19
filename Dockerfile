FROM ubuntu:latest
LABEL authors="GADOUR"

ENTRYPOINT ["top", "-b"]
# Use the OpenJDK 11 image from DockerHub
FROM openjdk:17-jdk

# Expose the port your Spring Boot application will run on
EXPOSE 8089

# Add the JAR file to the image
# Replace 'tp-foyer-1.0.jar' with the name of your JAR file
ADD target/tp-foyer-5.0.0.jar app.jar

# Set the entry point to run your application
ENTRYPOINT ["java", "-jar", "/app.jar"]