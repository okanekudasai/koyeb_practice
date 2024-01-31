# Build stage
FROM eclipse-temurin:17-jdk-alpine AS builder

RUN cat /application.yml
WORKDIR /app
COPY . .
RUN cat /application.yml
COPY /application.yml /app/src/main/resources/
RUN chmod +x gradlew && ./gradlew build
RUN ls /app/build/libs


# Run stage
FROM eclipse-temurin:17-jdk-alpine AS runner

RUN pwd
WORKDIR /app
RUN ls

COPY --from=builder /app/build/libs/*.jar app.jar

CMD ["java", "-jar", "app.jar"]