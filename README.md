* docker build . -t marlon/orbis-training-docker:0.1.0 
* docker tag marlonric/orbis-training-docker:0.1.0 marlonric/orbis-training-docker:0.2.0

- Archivo README.md

- Archivo docker-compose.yml

``` yml
version: "2"
services:
    nginx:
      container_name: orbis-training-docker
      image: marlonric/orbis-training-docker:1.0.0
      ports:
        - "1080:80"
```

`docker-compose up -d`


         