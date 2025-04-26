FROM openjdk:17-jdk-buster AS runner
RUN apt install unzip
COPY mule-ee-distribution-standalone-4.9.3.zip /app/
WORKDIR /app
RUN unzip mule-ee-distribution-standalone-4.9.3.zip \
    && rm mule-ee-distribution-standalone-4.9.3.zip \
    && mv mule-enterprise-standalone-4.9.3 mule
CMD [ "/app/mule/bin/mule"]
