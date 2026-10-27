# Build stage
FROM gradle:9.8.2-jdk25 AS build
WORKDIR /app
COPY . /app
RUN gradle build --no-daemon

# Package stage
FROM eclipse-temurin:25-jre-alpine
ENV APP_HOME=/app
WORKDIR $APP_HOME
COPY --from=build $APP_HOME/build/libs $APP_HOME
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "spring-data-rest.jar"]
