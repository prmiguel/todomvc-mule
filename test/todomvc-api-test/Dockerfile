FROM mule-deps
WORKDIR /test
COPY . .
RUN mvn dependency:resolve
CMD [ "mvn", "test" ]