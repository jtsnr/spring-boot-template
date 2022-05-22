FROM openjdk:17-jdk-alpine
COPY build/libs/spring-boot-template.jar app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]