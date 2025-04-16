#Start with a base image containing Java runtime
FROM openjdk:21-jdk-slim

# Add the application's jar to the image
COPY target/aws_demo-0.0.1-SNAPSHOT.jar aws_demo-0.0.1-SNAPSHOT.jar

# execute the application
ENTRYPOINT ["java", "-jar", "aws_demo-0.0.1-SNAPSHOT.jar"]

# Expose the application port
EXPOSE 8080
# for build --> docker build -t aws-demo .
# for run --> docker run -d --rm -p 8080:8080 --name aws-app aws-demo