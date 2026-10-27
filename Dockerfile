# Build stage
FROM eclipse-temurin:25-jdk-alpine AS build
WORKDIR /app
COPY . /app
RUN ./gradlew build --no-daemon

# Package stage
FROM eclipse-temurin:25-jre-alpine
ENV APP_HOME=/app
WORKDIR $APP_HOME
COPY --from=build $APP_HOME/build/libs $APP_HOME
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "spring-data-rest.jar"]
