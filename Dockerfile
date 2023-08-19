FROM openjdk:8-jre-alpine
WORKDIR /app
COPY target/HelloWorldApp-1.0.0.jar /app
EXPOSE 8080
CMD ["java", "-jar", "HelloWorldApp-1.0.0.jar"]

