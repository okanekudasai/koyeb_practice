# Build stage
FROM eclipse-temurin:17-jdk-alpine AS builder

WORKDIR /app
COPY . .
RUN chmod +x gradlew && ./gradlew build

# Run stage
FROM eclipse-temurin:17-jdk-alpine AS runner

WORKDIR /app
RUN ls -al
COPY --from=builder /app/target/*.jar app.jar

CMD ["java", "-jar", "app.jar"]