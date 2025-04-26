FROM openjdk:17-jdk-buster
RUN apt install unzip
COPY todomvc-api.jar /app/
COPY mule-ee-distribution-standalone-4.9.3.zip /app/
WORKDIR /app
RUN unzip mule-ee-distribution-standalone-4.9.3.zip \
    && rm mule-ee-distribution-standalone-4.9.3.zip \
    && mv mule-enterprise-standalone-4.9.3 mule \
    && cp todomvc-api.jar ./mule/apps
CMD [ "/app/mule/bin/mule"]
