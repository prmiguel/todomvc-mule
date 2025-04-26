FROM maven:3.9.9-eclipse-temurin-17-focal AS builder
WORKDIR /code
COPY . /code/
RUN mvn clean package -DskipTests

FROM openjdk:17-jdk-buster AS runner
RUN apt install unzip
COPY --from=builder /code/target/todomvc-api-1.0.0-SNAPSHOT-mule-application.jar /app/todomvc-api.jar
# COPY todomvc-api.jar /app/
COPY mule-ee-distribution-standalone-4.9.3.zip /app/
WORKDIR /app
RUN unzip mule-ee-distribution-standalone-4.9.3.zip \
    && rm mule-ee-distribution-standalone-4.9.3.zip \
    && mv mule-enterprise-standalone-4.9.3 mule \
    && cp todomvc-api.jar ./mule/apps
CMD [ "/app/mule/bin/mule"]
