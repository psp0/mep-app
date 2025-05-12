FROM gradle:jdk11 AS builder
WORKDIR /app
COPY build.gradle settings.gradle ./
COPY src ./src
RUN gradle bootJar --no-daemon

FROM openjdk:11-jre-slim
WORKDIR /app
RUN apt-get update && apt-get install -y netcat-openbsd
COPY --from=builder /app/build/libs/*.jar app.jar
COPY wait-for-it.sh .
RUN chmod +x ./wait-for-it.sh
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
