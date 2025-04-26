# Build mule containers

## Mule Dependencies
```sh
cd mule
cp ../app/backend/pom.xml .
docker build -f Dockerfile.deps -t mule-deps .
```

## Mule Runner
```sh
cd mule
cp ~/Downloads/mule-ee-distribution-standalone-4.9.3.zip .
docker build -t mule-runner .
```
*Note:* Download mule standalone manually
 