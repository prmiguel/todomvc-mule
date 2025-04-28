# TodoMVC API - Blackbox Automated Testing (BAT)

## Run Tests
```sh
cd test/todomvc-api-bat
~/.bat/bat/bin/bat --config=qax ./tests/GET_todo.dwl
```

## Build/Run Tests Container
```sh
cd test/todomvc-api-bat
docker build -t todomvc-api-bat .
docker run -it -v ${PWD}:/test bat --config=qax ./tests/GET_todo.dwl
```

## Reference
- [Installing BAT](https://docs.mulesoft.com/api-functional-monitoring/bat-install-task)
