# El sistema de archivos de Linux: directorios y archivos

En Linux, como en otros sistemas operativos, la información se almacena en archivos.  


A medida que avancemos veremos en detalle los archivos e investigaremos su contenido, cómo crearlos y editarlos y cómo se accede a ellos.  

Todos los archivos se almacenan en un sistema de archivos que se organiza en directorios. 

Los directorios son equivalentes a las carpetas en Windows o Mac OS.  

Se utilizan para organizar cómo se almacenan los archivos y, si se usan bien, pueden hacer que sea mucho más fácil encontrar y acceder a sus archivos.  

Por ejemplo, crear un directorio para cada proyecto en el que trabaja puede hacer que sea mucho más fácil encontrar información relevante.  

### El sistema de archivos de Linux está organizado jerárquicamente:  

![image](https://user-images.githubusercontent.com/25624961/168963183-ec7aee24-5e64-4816-99ca-b4ad2a281b59.png)


Los nombres de los directorios están separados por un caracter */*, tanto cuando lo visualizamos como cuando se busca en la terminal.

#### Prueba escribir el comando `pwd` en la terminal

----------------

El nivel superior de la jerarquía se denomina **directorio raíz**.  

Este nivel normalmente contendrá algunos archivos clave utilizados por el sistema y el inicio de una jerarquía de directorios.  

Es propiedad del **usuario root o super usuario** y, por lo general, los **usuarios estándar no pueden escribir en él**.  

![image](https://user-images.githubusercontent.com/25624961/230968586-6ff15ab1-2752-43d4-9774-52b013c919f9.png)

Piense en el **usuario root** como el usuario administrador en Windows o Mac OS pero **con poderes mucho mayores**. 

![image](https://user-images.githubusercontent.com/25624961/230968483-dab386b1-7203-46b0-8d29-47dec89cb0e6.png)



-----------------

El **directorio raíz** está representado simplemente por un carácter **/** cuando se escribe.

Los directorios pueden variar un poco, pero incluyen lugares donde se almacenan _software_ y _bibliotecas esenciales del sistema, archivos de configuración predeterminados para todas las cuentas de usuario, representaciones de archivos de dispositivos y medios conectados al sistema, software instalado para uso general y directorios de inicio de usuario_.  

Cada usuario siempre tendrá un directorio de inicio.  



Aquí es donde se almacenan sus archivos y directorios.  

Por lo general, un usuario individual será la única persona que podrá escribir en su directorio de inicio, a menos que establezca permisos para que otros puedan hacerlo.   

Aprenderemos sobre los permisos de archivo más adelante.  


![image](https://user-images.githubusercontent.com/25624961/168963506-8907ef77-af87-4470-8477-329bd43838b4.png)
