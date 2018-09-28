Con este comando nos ha permitido mastrar todos los archivos pesados
> git rev-list --objects --all 

Se ha filtrado el archivo pesado que se proponia eliminar de los objetos de git
> git filter-branch --index-filter 'git rm --cached --ignore-unmatch sc.16.tar.gz' -- --all

Eliminar la carpeta refs original que se generó
> rm -Rf .git/refs/original

Eliminar la carpeta logs que se generó
> rm -Rf .git/logs/

Ejecutamos el comando para empaquetar y reconstruir los objetos segun los cambios actuales con el --prune=now
> git gc --aggressive --prune=now


1. ¿Qué importancia tiene los tags en un proyecto?
    > Tiene mucha importancia ya que nos permite crear muchas versiones de nuestro proyecto con la finalidad de poder movernos entre cada uno de estos.  

2. ¿Cuál es la diferencia entre un tag normal y un tag anotado en git?
    > En  un tag normal podemos especificar el numero de la version y un tag anotado nos permite agregar un cuerpo a la version mediante el flag -a.

3. ¿Cómo se sube todos los tags de git que hay en mi local?
    > añadiendo el flag --tags al realizar un git push

4. ¿Es necesario loguearse cada vez que subo una imagen a dockerhub?
    > No, solo se logea una vez

5. ¿Qué es y para qué sirve docker?
    > Es una plataforma para crear contenedores y sirve para poder crear aplicaciones isoladas.

6. ¿Cuál es la diferencia entre docker y VirtualBox (virtualización)?
    > Docker crea una aplicacion (docker machine) que se conecta directamente al Kernel y VirtualBox crea una capa llamada HyperVisor y es ahi donde se ejecutan nuestras aplicaciones.  

7. ¿Es necesario depender de una imagen de docker base al crear una imagen nueva?
    > No, no es necesariamente, uno mismo puede crear su propia imagen.

8. ¿Porqué debo anteponer el nombre de usuario en una imagen docker nueva?
    > Para al momento de pushear poder reconocer el usuario de DockerHub

9. ¿Que pasa si creo una imagen sin especificar una versión o tag, con qué versión se crea?
    > Se crea el tag "latest" por defecto.
    
    
 
- ¿Porqué es necesario crear un contenedor con esta bandera -it ? ¿Qué pasa si no le pongo -it?
    > Para poder iniciar el contenedor de forma interactiva y activa la consola TTY del contenedor. Sin -it se levanta el contendor sin acceder de forma interactiva
- ¿Para qué sirve ejecutar el comando bash al ejecutar una imagen?
    > Para que al momento de levantar el contenedor acceda de modo interactivo al contenedor mediante la terminal.

 
- ¿Cuál es la diferencia entre docker ps y docker ps -a?
> docker ps nos lista los contenedores ejecutandos y docker ps -a nos lista todos los contenedores prendidos y apagados.


Listar archivos del contenedor
- docker run marlonric/orbis-training-docker:0.2.0 ls

Mostrar el contenido del archivo en el contenedor
- docker run marlonric/orbis-training-docker:0.2.0 cat preguntas.md 