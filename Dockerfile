# Use an official OpenJDK image to build the app
FROM openjdk:17-jdk-slim AS build

# Set the working directory inside the container
WORKDIR /app

# Copy the Java source code into the container
COPY DiamondPattern.java /app/

# Compile the Java program (DiamondPattern.java)
RUN javac DiamondPattern.java

# Create a JAR file from the compiled class files
RUN jar cfe diamond-pattern.jar DiamondPattern DiamondPattern.class

# Stage 2: Use a smaller OpenJDK runtime image to run the app
FROM openjdk:17-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from the build stage to the runtime stage
COPY --from=build /app/diamond-pattern.jar /app/diamond-pattern.jar

# Expose the necessary port (optional, only needed if the app is network-based)
# EXPOSE 8080  # Not needed in this case as it's a console app

# Run the Java application when the container starts
CMD ["java", "-jar", "diamond-pattern.jar"]

