FROM openjdk:17-jdk-slim
ARG REGISTRY_SERVICE_JAR_FILE=registry-service/registry-service-0.0.1-SNAPSHOT.jar
COPY ${REGISTRY_SERVICE_JAR_FILE} registry-service.jar

EXPOSE 8761
ENTRYPOINT ["java", "-jar", "registry-service.jar"]