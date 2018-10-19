Con este comando nos ha permitido mastrar todos los archivos pesados
> `git rev-list --objects --all ` 

Se ha filtrado el archivo pesado que se proponia eliminar de los objetos de git
> `git filter-branch --index-filter 'git rm --cached --ignore-unmatch sc.16.tar.gz' -- --all`

Eliminar la carpeta refs original que se generó
> `rm -Rf .git/refs/original`

Eliminar la carpeta logs que se generó
> `rm -Rf .git/logs/`

Ejecutamos el comando para empaquetar y reconstruir los objetos segun los cambios actuales con el --prune=now
> `git gc --aggressive --prune=now`


1. ¿Qué importancia tiene los tags en un proyecto?
    > `Tiene mucha importancia ya que nos permite crear muchas versiones de nuestro proyecto con la finalidad de poder movernos entre cada uno de estos.`  

2. ¿Cuál es la diferencia entre un tag normal y un tag anotado en git?
    > `En  un tag normal podemos especificar el numero de la version y un tag anotado nos permite agregar un cuerpo a la version mediante el flag -a.`

3. ¿Cómo se sube todos los tags de git que hay en mi local?
    > `añadiendo el flag --tags al realizar un git push`

4. ¿Es necesario loguearse cada vez que subo una imagen a dockerhub?
    > `No, solo se logea una vez`

5. ¿Qué es y para qué sirve docker?
    > `Es una plataforma para crear contenedores y sirve para poder crear aplicaciones isoladas.`

6. ¿Cuál es la diferencia entre docker y VirtualBox (virtualización)?
    > `Docker crea una aplicacion (docker machine) que se conecta directamente al Kernel y VirtualBox crea una capa llamada HyperVisor y es ahi donde se ejecutan nuestras aplicaciones.`  

7. ¿Es necesario depender de una imagen de docker base al crear una imagen nueva?
    > `No, no es necesariamente, uno mismo puede crear su propia imagen.`

8. ¿Porqué debo anteponer el nombre de usuario en una imagen docker nueva?
    > `Para al momento de pushear poder reconocer el usuario de DockerHub`

9. ¿Que pasa si creo una imagen sin especificar una versión o tag, con qué versión se crea?
    > `Se crea el tag "latest" por defecto.`
    
    
 
- ¿Porqué es necesario crear un contenedor con esta bandera -it ? ¿Qué pasa si no le pongo -it?
    > `Para poder iniciar el contenedor de forma interactiva y activa la consola TTY del contenedor. Sin -it se levanta el contendor sin acceder de forma interactiva`
- ¿Para qué sirve ejecutar el comando bash al ejecutar una imagen?
    > `Para que al momento de levantar el contenedor acceda de modo interactivo al contenedor mediante la terminal.`

 
- ¿Cuál es la diferencia entre docker ps y docker ps -a?
    > `docker ps nos lista los contenedores ejecutandos y docker ps -a nos lista todos los contenedores prendidos y apagados.`


Listar archivos del contenedor

    `docker run marlonric/orbis-training-docker:0.2.0 ls`

Mostrar el contenido del archivo en el contenedor

    `docker run marlonric/orbis-training-docker:0.2.0 cat preguntas.md` 

---

1. ¿Cuál es la diferencia entre una imagen y un contenedor?
    > `Imagen es la base para levantar uno o muchos contenedor`
2. ¿Cómo listo las imágenes que hay en mi computadora?
    > `Con el comando docker images`
3. ¿Cómo salgo de un contenedor de docker?
    > `Con el comando exit`
4. ¿Se elimina el contenedor al salir de ella?
    > `No se elimina, se apaga el contenedor`
5. ¿Cómo elimino un contenedor?
    > `Con el comando docker rm mas el id del contenedor o el nombre`
6. ¿Para qué es necesario el flag `-i`, `-t`, `--rm`?
    > `-i: Para activar de forma interactiva`
    <br> `-t: Activa la consola TTY del contenedor`
    <br> `-rm: Para eliminar automaticamente el contenedor en caso exista`
7. ¿Cómo verifico que el archivo creado se encuentra en la imagen?
    > `Con docker run {name_image} cat name_file`
8. ¿Cómo se comenta una linea de código en Dockerfile?
    > `Con el simbolo almohadilla #`
    
---
Exponiendo puerto 80 a través del puerto 1080
    
    docker run -d -p 1080:80 marlonric/orbis-training-docker:1.0.0

---
    
1. ¿Qué es NGINX?
    > `Es un servidor web`
2. ¿Cómo expongo puertos en docker?
    > `EXPOSE`
3. ¿Cómo especifico los puertos al levantar un contenedor (docker run)?
gst    > `con la separacion de dos puntos ":", el primer puerto hace referencia al puerto del host y el segundo puerto hace referencia al contenedor`
4. ¿Cómo hago 'forward' al levantar un contenedor (docker run)?
    > `con el flag -p "8080:80"`




Respuestas Partes 10:
====================    
1. 
rm -rf app/build

- En "orbis-training-project/app/package.json" modificar:

"release": "remarker build --source preguntas.md --dest ./deploy/build"

- Ejecutar:

make release

3. 
mv Makefile-task.mk makefiles

4. 
mv makefiles/Makefile-task.mk makefiles/task.mk

- En el archivo Makefile modificar lo siguiente a:
include makefiles/task.mk

5. 
touch makefiles/deploy-ghpages.mk

Preguntas:
==========
1. ¿Qué significa el comando -d?
    Verifica la existencia del directorio

    if [ -d makefiles/ ]; then echo existe el directorio!; fi
2. ¿Porqué la sentencia comienza con @?
    @ especifica que la instruccion es un commando.

3. ¿Para qué sirve el comando mkdir?
    Para crear una carpeta.

4. Explicar lo que hace la función mkdir_deploy_dir
   Verifica que el directorio existe. Si no existe crea el directorio.

Preguntas:
==========
1. ¿Para qué sirve el uso de \?
    Permite ejecutar comandos en la siguiente linea.

2. ¿Para qué sirve el uso de &&?
    Ejecuta un comando luego de otro comando. No es pipe.

3. ¿Qué función cumple usar los argumentos -rf?
    En rm:
        -r: recursivo
        -f: file

4. Explicar lo que hace la función git_init (linea por linea)
   La funcion git_init entra al directorio, remueve .git y ejecuta el comando git_init

Preguntas:
==========

1. ¿Para qué sirve el uso de eval?
    Asigna un resultado a una variable

2. ¿Para qué sirve el uso de shell?
    Para ejecutar un comando en shell.

- ¿Para qué sirve el uso de git log --pretty=format:"%an"?
    El comando lista los commits segun un formato.
    '%an': author name
    '%ae': author email
    '%s': commit message

3. ¿Cuál es la diferencia en usar git config y git config --global?
    Git config cambia .git a nivel local. 
    Git config --global a nivel general. 

4. Explicar lo que hace la función git_config (línea por línea)
    Asigna el author name del ultimo commit a la variable GIT_USER_NAME
    Asigna el author email del ultimo commit a la variable GIT_USER_NAME
    Entra al directorio y actualiza el config local de .git/

Preguntas:
==========
1. ¿Para qué sirve el uso de awk?
    Sirve para buscar y formatear texto.

2. ¿Para qué sirve el uso de sed?
    stream editor for filtering and transforming text

3. ¿Para qué sirve el uso de git log --pretty=format:"%an"?
    Lee log commits y muestra la salida formateada de la forma solo nombre del autor.

4. Explicar lo que hace la función git_add_remote_repository
    Obtiene el nombre del repositorio remoto en git y los asigna a la variable REPOSITORY.
    Luego, formatea la variable REPOSITORY concatenandola con un prefijo y lo asigna a la variable GIT_REPOSITORY_REMOTE
    Luego, entra en la carpeta GIT_BRANCH_DIR y agrega la url de GIT_REPOSITORY_REMOTE al remote list de git.

PREGUNTAS:
==========
- Explicar lo que hace la función copy_files_to_deploy
Copia un archivo a otro directorio

- Explicar lo que hace la función git_add
Entra en la carpeta GIT_BRANCH_DIR y agrega todos los archivos a la rama GIT_BRANCH e inmediatamente ejecuta git status.

- Explicar lo que hace la función create_commit (línea por línea)
  Obtiene el mensaje del ultimo commit y lo asigna en la variable temporal MESSAGE. Luego entra en GIT_BRANCH_DIR y commitea el mensaje.

- Explicar lo que hace la función git_push (línea por línea)
Entra en GIT_BRANCH_DIR y pushea los cambios de forzado

- Explicar lo que hace la función clean_workspace
  Remueve el directorio GIT_BRANCH_DIR.

===================
PARTE 11 (Jenkins)
===================  
1. Instalación de jenkins con docker
- Crear carpeta docker en la raiz:
mkdir docker

- Crear carpeta jenkins dentro de docker:
mkdir jenkins

- Crear archivo Dockerfile dentro de jenkins:
mkdir Dockerfile

- Resultado: /docker/jenkins/Dockerfile

- En Dockerfile agregar:
FROM jenkinsci/blueocean
USER root
RUN apk add --update make

- Construirmos nuestra imagen a partir de esta receta con este comando.
Ejecutar en la raiz del proyecto:
docker build -t swosortiz/jenkins-deploy:0.1.0 docker/jenkins

- Imagenes:
REPOSITORY                        TAG                
swosortiz/jenkins-deploy          0.1.0   (GENERADA EN BASE A LA IMAGEN ANTERIOR)          
jenkinsci/blueocean               latest  (DESCARGADA)           

- Ahora corremos nuestro container de jenkins a partir de la nueva imagen creada con el siguiente comando.

docker run --rm 
-u root 
-p 8080:8080 
-v jenkins-data:/var/jenkins_home 
-v /var/run/docker.sock:/var/run/docker.sock 
swosortiz/jenkins-deploy:0.1.0

Con salto de linea:

docker run --rm \
-u root \
-p 8080:8080 \
-v jenkins-data:/var/jenkins_home \
-v /var/run/docker.sock:/var/run/docker.sock \
swosortiz/jenkins-deploy:0.1.0


- Acceder a http://localhost:8080/login?from=%2F
Se mostrará la ruta /var/jenkins_home/secrets/initialAdminPassword del token de acceso para Jenkins.

- Obtener ID del container o el nombre:
docker ps

- Acceder al contenedor y correr bash:
docker exec -it c606e5b42ddc bash 

- Dentro del contenedor acceder a la ruta /var/jenkins_home/secrets/initialAdminPassword
Para eso ejecutar:
bash-4.4# cat /var/jenkins_home/secrets/initialAdminPassword

- Copiar el hash:  45e94d9d226e434e9fcba8f166f743dc

- Acceder a http://localhost:8080/login?from=%2F y pegar el hash.

- Luego seleccionar en "Instalar Plugins"
- Instalando ... siguiente, siguiente y restart.
- Refrescar y acceder a Jenkins.

- En Jenkis crear una tarea http://localhost:8080/newJob ,  nombre "primer_jobs", luego seleccionar "Pipeline" y OK.








































