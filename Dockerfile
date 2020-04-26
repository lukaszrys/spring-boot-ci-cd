FROM openjdk:11-jre-slim-sid

ARG JAR_FILE

ADD ./target/${JAR_FILE} /app/spring-boot-ci-cd.jar
CMD ["java", "-Xmx512m", "-jar", "/app/spring-boot-ci-cd.jar"]

EXPOSE 8080