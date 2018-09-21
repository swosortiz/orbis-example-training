# Ejercicio 3
Eliminar archivo pesado pero no visualizado en GIT.

1- Cuenta los objetos de GIT:
git count-objects -v		

2- Limpia la BD guardando todos los objetos en un archivo empaquetador.
git gc							

3- Visualiza los objetos pesados ordenados por la 3ra columna que indica el peso:
git verify-pack -v .git/objects/pack/pack-e121f70e46f7ec3df6d405dfb4895762265c6af7.idx

Se visualiza el HASH del objeto más pesado:
cfc3322ec593c88d0e4d68c312de3583ca741041 blob   153942735 153904153 471677	

4- Listar los archivos del HASH:
git rev-list --objects --all | grep 

Se visualiza el archivo:
cfc3322ec593c88d0e4d68c312de3583ca741041 sc.16.tar.gz							
5- Se borra la cache de GIT considerando el archivo más pesado:
git filter-branch --index-filter 'git rm --cached --ignore-unmatch sc.16.tar.gz'							

6- Limpia los logs de backup:
rm -Rf .git/refs/original
rm -Rf .git/logs/

7- Limpia la BD guardando todos los objetos en un archivo empaquetador.
git gc

8- Se pushea los cambios al remoto:
git push origin master