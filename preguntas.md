Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate. Volutpat maecenas volutpat blandit aliquam etiam erat. Lorem mollis aliquam ut porttitor. Proin libero nunc consequat interdum varius sit amet mattis vulputate. Faucibus a pellentesque sit amet porttitor eget dolor. Scelerisque varius morbi enim nunc.

Erat imperdiet sed euismod nisi porta. Imperdiet nulla malesuada pellentesque elit eget gravida cum. Velit dignissim sodales ut eu sem integer vitae justo. 

Con este comando nos ha permitido mastrar todos los archivos pesados
git rev-list --objects --all 
Se ha filtrado el archivo pesado que se proponia eliminar de los objetos de git
git filter-branch --index-filter 'git rm --cached --ignore-unmatch sc.16.tar.gz' -- --all
Eliminar la carpeta refs original que se generó
rm -Rf .git/refs/original
Eliminar la carpeta logs que se generó
rm -Rf .git/logs/
Ejecutamos el comando para empaquetar y reconstruir los objetos segun los cambios actuales con el --prune=now
git gc --aggressive --prune=now

