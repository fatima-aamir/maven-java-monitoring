FROM maven:3.8.3-openjdk-16

WORKDIR /app

# Copy the entire application directory to the container
COPY . .

# Build the application using Maven and package it
RUN mvn package

EXPOSE 8080

CMD ["java", "-jar", "target/actuator-demo-0.0.1-SNAPSHOT.jar"]