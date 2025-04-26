FROM mule-deps AS builder
WORKDIR /code
COPY . /code/
RUN mvn clean package -DskipTests

FROM mule-runner AS runner
COPY --from=builder /code/target/todomvc-api-*-mule-application.jar /app/mule/apps/todomvc-api.jar
CMD [ "/app/mule/bin/mule"]
