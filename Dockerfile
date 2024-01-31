# Build stage
FROM eclipse-temurin:17-jdk-alpine AS builder

WORKDIR /app
COPY . .
RUN chmod +x gradlew && ./gradlew build
RUN ls


# Run stage
FROM eclipse-temurin:17-jdk-alpine AS runner

RUN pwd
WORKDIR /app
RUN ls
#
#COPY --from=builder /app/target/*.jar app.jar
#
#CMD ["java", "-jar", "app.jar"]