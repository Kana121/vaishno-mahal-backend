# Use the official Maven image with Java 21
FROM maven:3.9.6-eclipse-temurin-21

# Set working directory
WORKDIR /app

# Copy the project files
COPY . .

# Build the application
RUN mvn clean package -DskipTests

# Expose the port your app runs on
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "target/*.jar", "--spring.profiles.active=prod"]
