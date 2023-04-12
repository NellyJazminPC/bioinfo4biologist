
# Conceptos básicos de la línea de comandos

### `pwd`

`pwd` nos da el directorio en donde estamos, significa **imprime el directorio de trabajo** (print working directory). 

El directorio de trabajo es **dónde estamos**, equivale a tener una ventana abierta del explorador en una carpeta determinada.  

El **working directory de base** es la carpeta **"home"** del usuario de la computadora. En mi caso:

    $ pwd
    /home/jaz
 
La diagonal **/** es el símbolo que separa los directorios en niveles jerárquicos. En el ejemplo anterior observemos que **`jaz`** es un subdirectorio dentro de **`home`**, el cuál a su vez es un subdirectorio de **`root`** (**/**), la raíz de todos los directorios.

### `cd`

`cd` significa **cambiar de directorio** (change directory) y sirve para movernos a otro directorio. Por ejemplo:

```
jaz@n311:~$ cd bioinfo/
jaz@n311:~/bioinfo$ pwd

```





**¿Cambio algo?**

El texto antes de **`$`** nos indica el nombre del usuario, del equipo y el directorio actual. Al cambiar de directorio, cambió de **`~`** (home) a `~/bioinfo` que sería `/home/jaz/bioinfo`. 




Para navegar entre los directorios hay varias opciones:

![image](https://user-images.githubusercontent.com/25624961/231310426-d6a80ec1-abe9-47ae-b1c7-bfbae793b217.png)



#### Moverse hacia adelante/abajo:

* **Absolute path o ruta absoluta** que es dar la ruta (dirección) completa **desde root** hasta el directorio que queremos.

* **Relative path o ruta relativa** que es dar la ruta **desde donde estamos** hasta el directorio que queremos.

Ejemplo de ruta absoluta:

```
jaz@n311:~$ cd /home/jaz/bioinfo/
jaz@n311:~/bioinfo$ 

```

**OJO** 
`jaz` es mi nombre de usuario, entonces la **ruta absoluta** tiene que llevar **su nombre de usuario**.


#### Moverse a home:

`~` es una especie de ruta corta a la ruta absoluta de tu directorio **home**. No importa dónde estés, la línea `cd ~` te llevará a **home**. 


```
jaz@n311:~/bioinfo$ cd ~
jaz@n311:~$ 
```


![image](https://user-images.githubusercontent.com/25624961/231311598-668c0e3a-c9fa-4de5-9412-5bb2893b4446.png)





#### Moverse para atrás (hacia el directorio raíz):

Igual puede ser con rutas absolutas o relativas, pero utilizando `..` que representa **parent directory**, es decir, el directorio arriba (o atrás):

`cd ..` por lo tanto te lleva a un directorio arriba de donde estés.

Ejemplo:


```

jaz@n311:~/bioinfo/bioinfo4biologist$ pwd
/home/jaz/bioinfo/bioinfo4biologist
jaz@n311:~/bioinfo/bioinfo4biologist$ cd ../
jaz@n311:~/bioinfo$ pwd
/home/jaz/bioinfo

```

#### Moverse para atrás y para adelante en la misma línea

Puedes usar `..` varias veces pero recuerda incluir `/` para separar niveles. 

Ejemplo:

```
$ pwd
/home/jaz/bioinfo/bioinfo4biologist
$ cd ../../
$ pwd
/home/jaz

```

Es decir `../` se puede combinar con una ruta relativa.


#### Errores comunes al usar `cd`


* **Hay que distinguir mayúsculas y minúsculas**

* **Hay que verificar en que nivel esta el directorio o archivo que buscas**

* **Verifica que lo hayas escrito correctamente**


#### Tips de acceso rápido en la Terminal

**Flecha arriba/abajo** para acceder a los últimos comandos utilizados
**TAB** para "completar" la escritura de la ruta o el nombre de los archivos.


### `ls`

Enlista los archivos y directorios presentes en un directorio. Ejemplo:

```
$ cd bioinfo/bioinfo4biologist/
$ ls
archive            Glosario.md  Otros_recursos_recomendados.md  SESION_1
Final_exercise.md  Glossary.md  README.md                       SESION_2

```

Vemos los archivos y directorios enlistados en orden alfabético. 

Para tener más información de los archivos:

`ls -l`nos da más información: 
si es un directorio (d) o un archivo (-), permisos (si es sólo lectura, editable, etc y por quién, detalles más adelante), número de links al archivo, qué usuario es el dueño, a qué grupo pertenece dicho usuario, tamaño en bytes, fecha-hora en que se modificó y el nombre del directorio o archivo.

Ejemplo:

```
$ ls -l
total 36
drwxrwxr-x 2 jaz jaz 4096 abr  9 22:35 archive
-rw-rw-r-- 1 jaz jaz 1584 abr  8 22:27 Final_exercise.md
-rw-rw-r-- 1 jaz jaz 4617 abr  8 22:27 Glosario.md
-rw-rw-r-- 1 jaz jaz 3896 abr  8 22:27 Glossary.md
-rw-rw-r-- 1 jaz jaz 2294 abr  8 22:27 Otros_recursos_recomendados.md
-rw-rw-r-- 1 jaz jaz 2662 abr 11 15:18 README.md
drwxrwxr-x 2 jaz jaz 4096 abr 11 15:18 SESION_1
drwxrwxr-x 3 jaz jaz 4096 abr 11 15:18 SESION_2

```

También se pueden ordenar por fecha de modificación, por ejemplo:

```
$ ls -lt
total 36
drwxrwxr-x 2 jaz jaz 4096 abr 11 15:18 SESION_1
drwxrwxr-x 3 jaz jaz 4096 abr 11 15:18 SESION_2
-rw-rw-r-- 1 jaz jaz 2662 abr 11 15:18 README.md
drwxrwxr-x 2 jaz jaz 4096 abr  9 22:35 archive
-rw-rw-r-- 1 jaz jaz 1584 abr  8 22:27 Final_exercise.md
-rw-rw-r-- 1 jaz jaz 4617 abr  8 22:27 Glosario.md
-rw-rw-r-- 1 jaz jaz 3896 abr  8 22:27 Glossary.md
-rw-rw-r-- 1 jaz jaz 2294 abr  8 22:27 Otros_recursos_recomendados.md

```

**IMPORTANTE**

`man ls` abre el manual de `ls` (**o de cualquier otro comando**), donde vienen muchas más opciones para usar este comando.

Si entras al manual y quieres salir, presiona la tecla "q" 


### `mkdir`

Significa **crea un directorio** (make directory). 

```
$ mkdir Prueba
$ ls
Prueba
```

Se puede combinar con rutas absolutas o relativas para crearlo en un directorio diferente al actual.


### `cp`

Copia un archivo o directorio de lugar A a lugar B.

```
$ cp -r Prueba ../
$ ls ../
Prueba
```


**¿Qué significa `-r`?**


### `mv`

Mueve un archivo o directorio de lugar A a lugar B. Equivale a _cortar y pegar_.

```
$ mv ../Prueba ../Manzanas
$ ls ../
Maiz		Manzanas	Peras		Tomates
$ ls ../Manzanas
Prueba

```

Nota que con `mv` no es necesario utilizar `-r` para borrar directorios.


### `rm`

Borra archivos o directorios  (**cuidado!**).

```
$ rm -r Prueba
$ rm -r ../Manzanas/Prueba
```


[Guía con más opciones para usar `tar`](http://www.tecmint.com/18-tar-command-examples-in-linux/)

`tar` tiene muchas opciones, lo importante es saber que existen y cómo buscarlas en el manual.
