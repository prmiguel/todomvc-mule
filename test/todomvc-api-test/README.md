# Tests


## Build mule tests container
```sh
cd test/todomvc-api-test
docker build -t todomvc-mule-test .
```

## Run tests
```sh
docker run -it todomvc-mule-test
```