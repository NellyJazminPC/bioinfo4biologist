# Archivos, propiedad de archivos y permisos de archivos  

La definición más básica de un archivo en Linux es que es una colección de datos con nombre que aparece al usuario como un bloque contiguo de información.  

Todo en Linux es un archivo o un proceso (es decir, un programa en ejecución). Los archivos no solo incluyen archivos de texto, archivos de imagen y archivos binarios compilados de programas.  

Un directorio es un tipo especial de archivo, las particiones de disco son archivos y los controladores de dispositivos de hardware son archivos. 
Al decir esto, como usuario de Linux, en su mayoría tratará con archivos de texto, archivos de imagen y archivos binarios compilados. 

Cada archivo tiene un propietario individual (generalmente el usuario que lo creó) y un conjunto más amplio de propietarios que pertenecen a un grupo Unix en particular. 

Un grupo de Unix es un conjunto de usuarios que tienen permiso para acceder a un software en particular o archivos en particular. Por ejemplo, en organizaciones grandes, se pueden configurar grupos para que solo los miembros de equipos particulares puedan acceder a archivos y directorios particulares.  

Los grupos también se usan para garantizar que solo ciertos usuarios puedan usar comandos que pueden afectar el sistema Linux completo. Para ver en qué grupos se encuentra, ejecute los grupos de comandos. Cada usuario tiene un grupo principal. Esto aparecerá primero en la salida de grupos. 
De forma predeterminada, todos los archivos o directorios creados por este usuario serán propiedad de este grupo principal.

Al explicar los permisos de archivos, quizás sea mejor mirar las cosas en el contexto de la salida o lo que obtenemos al ejecutar el comando `ls -l` en la terminal (la salida de forma larga de ls):

```bash
drwxrwxr-x 9 mary usuario 4096 14 de febrero de 2019 variant_calling
-rwxr-xr-x 1 mary usuario 18822 4 de abril de 2018 vcfutils_1.pl
-rwxr-xr-x 1 mary usuario 20533 4 de abril de 2018 vcfutils_2.pl
```

En este ejemplo:  
- La columna 5 enumera el tamaño de un archivo/directorio. 
- La columna 6 es la fecha en que se modificó por última vez.
- La columna 7 muestra el nombre del archivo.  

Además, 
- La columna 3 enumera el usuario propietario del archivo.  
- La columna 4 muestra el grupo propietario del archivo.  
- La columna 2 representa el número de enlaces a un archivo. No entraremos en detalles aquí, pero generalmente será 1 para un archivo estándar y un número mayor que 1 para un directorio.
- La columna 1 proporciona detalles de los permisos de archivo. 

La primer columna consta de 10 caracteres.  

![image](https://user-images.githubusercontent.com/25624961/169716940-ba1b08a1-cbe3-411d-83f9-643b18dd8bb7.png)


El primer carácter indica si un archivo tiene un estado especial. Más comúnmente, cuando el carácter es una d, esto significa que el archivo de la lista es un directorio.  

Los nueve caracteres siguientes se dividen en tres grupos. Los caracteres 2 a 4 indican permisos para el propietario del archivo, los caracteres 5 a 7 para el grupo de propietarios del archivo y los caracteres 8 a 10 indican permisos para todos los demás usuarios.  

En cada caso, si el primer carácter es r, significa que el usuario o grupo de usuarios puede leer (**r**ead) el archivo.  
Si el segundo carácter es w, significa que el usuario o grupo de usuarios puede escribir (**w**rite) en el archivo. 
Por último, si el carácter final es x, esto indica que el usuario puede ejecutar (e**x**ecutable) el archivo (es decir, es un script o programa que puede ejecutar).  


**Hay tres comandos que se utilizan para cambiar la propiedad y los permisos de los archivos.** 

Estos son `chown`, que cambia la propiedad del usuario de un archivo, `chgrp`, que cambia la propiedad del grupo de un archivo, y **`chmod`**, que cambia los permisos de un archivo. 

En general, `chown` solo puede ser utilizado por usuarios con derechos de administrador, por lo que es poco probable que utilice este comando.  

La sintaxis general es: 

```bash  
chown OPCIONES ARCHIVO DE USUARIO[S}
```

Intenta correr en la terminal:

```bash
man chown
```

Cambiar la propiedad del grupo con chgrp usa una sintaxis similar a la que usa chown: 

```bash
chgrp OPCIONES ARCHIVO DE USUARIO[S}
```

Nuevamente, use `man` para verificar las opciones. La opción más utilizada es -r para realizar cambios recursivamente en un directorio. 
Un usuario solo puede cambiar la propiedad del grupo de un archivo de su propiedad. Del mismo modo, un usuario solo puede cambiar la propiedad del grupo de un archivo a un grupo del que es miembro. 

De los tres comandos enumerados anteriormente, **`chmod`** es el que probablemente usará con más frecuencia.  

Se puede utilizar de dos maneras:

  - El primero, conocido como modo numérico, como era de esperar, utiliza argumentos numéricos para establecer permisos para los tres tipos de usuarios (propietario, grupo y universal). 
  La sintaxis básica utilizada es similar en algunos aspectos a la sintaxis utilizada para chown y chgrp. 
  
```bash
chmod OPCIONES ARCHIVO DE TRES_DIGITOS[S]
```

Como ejemplo, `chmod 666 file.txt` configurará un archivo llamado `file.txt` para que el propietario, el grupo y todos los usuarios puedan leer y escribir. 

Este sitio demuestra el significado de cada dígito y se puede utilizar para garantizar que establezca los permisos correctamente: 

https://chmod-calculator.com/ 


  - La segunda forma de usar `chmod` se conoce como modo simbólico. Utiliza una sintaxis similar pero letras y símbolos (+ y -) para establecer permisos. 
  Siempre hay tres caracteres en el argumento cuando se ejecuta chmod en modo simbólico.  
  El primer carácter siempre debe ser una letra y puede ser u (usuario), g (grupo), o (otros) o a (todos, es decir, cualquiera cubierto por u, g u o).  
  El segundo carácter es un símbolo y puede ser + para agregar un nivel de permiso o - para eliminar un nivel de permiso. 
  El tercer carácter es una letra, que puede ser una de r (hace que los archivos sean legibles), w (hace que los archivos se puedan escribir) o x (hace que los archivos sean ejecutables). 
  
  Como ejemplo, `chmod g+w file.txt` hará que `file.txt` pueda ser escrito por cualquier persona con propiedad del grupo. 
  
<img src="https://user-images.githubusercontent.com/25624961/169717448-08c49073-9fc6-4110-9ab7-f06a9b4c4e04.png" width="350">
  
Establecer correctamente los permisos de los archivos puede ser importante, pero también lleva un tiempo acostumbrarse. Como con todo lo relacionado con la línea de comandos, _la práctica es clave_.

<img src="https://user-images.githubusercontent.com/25624961/169717601-38aea6b3-6536-4799-a690-08fe16f4379c.png" width="350">

