* docker run -v $PWD/app:/app --entrypoint=/bin/ls marlonric/orbis-training-docker:2.0.0 -l /app
* Comando para instalar dependencias node en base a un package.json
    > docker run --workdir=/app -v $PWD/app:/app marlonric/orbis-training-docker:2.0.0 npm install
* Exponer dos puertos
    > docker run -p "3030:3030" -p "35729:3030" --workdir=/app -v $PWD/app:/app marlonric/orbis-training-docker:2.0.0 npm start
    
* Exponiendo los dos puertos de remarker
    > docker run -p "1042:1042" -p "35729:35729" --workdir=/app -v $PWD/app:/app marlonric/orbis-training-docker:2.0.0 npm start
* Construyendo de un md a un archivo js y html con remarker
    > docker run --workdir=/app -v $PWD/app:/app marlonric/orbis-training-docker:2.0.0 npm run release  