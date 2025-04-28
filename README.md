# TodoMVC - Mule

![image](https://github.com/user-attachments/assets/79ece466-3293-4abf-8a44-1c3197617956)


## Build mule api
```sh
cd app/backend
docker build -t todomvc-mule .
```

## Run app
```sh
cd app
docker compose up -d
```

[Mule Api Console](http://localhost:8081/console/)
[Adminer Console](http://127.0.0.1:9080/index.html?pgsql=db&username=postgres&db=todomvc&ns=public)

## References
