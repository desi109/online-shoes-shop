# This image contains the JDK and Maven needed to build Java applications.
FROM maven:3.8.4-openjdk-17-slim AS build

# Set the working directory in the container
WORKDIR /app

# Copy the pom.xml file to download dependencies
COPY ./pom.xml .

# Download dependencies.
# This step is separated from copying the source code to leverage Docker cache
RUN mvn -B -f pom.xml -s /usr/share/maven/ref/settings-docker.xml dependency:resolve

# Copy the application source code to the container
COPY ./src ./src

# Package the application
RUN mvn -B -s /usr/share/maven/ref/settings-docker.xml clean package

# Use AdoptOpenJDK image for the runtime environment
FROM adoptopenjdk/openjdk17:alpine-jre AS runtime

# Run Stage
FROM openjdk:17-alpine

# Copy the packaged JAR file from the build stage to the container
COPY --from=build /app/target/*.jar app.jar

# Expose the port the application runs on
EXPOSE 8080

# Define the command to run the application
CMD ["java", "-jar", "app.jar"]