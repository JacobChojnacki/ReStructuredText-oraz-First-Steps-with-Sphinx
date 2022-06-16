FROM gradle:6.0.1-jdk8 AS build
USER root
RUN mkdir app
COPY src/ /app/src/
COPY build.gradle /app/
COPY settings.gradle /app/
WORKDIR /app
RUN gradle bootJar

FROM openjdk:8-jdk-alpine
COPY --from=build /app/build/libs/app.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]