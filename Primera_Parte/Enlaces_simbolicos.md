# Enlaces simbólicos y su uso

Un **symlink** es un enlace simbólico de Linux/UNIX que apunta a otro archivo o carpeta en su computadora, o a un sistema de archivos conectado.  

Esto es similar a un acceso directo de Windows.   

<img src="https://user-images.githubusercontent.com/25624961/169720128-636be598-f3ea-4f59-be8b-e60dd8403097.png" width="300">

Los enlaces simbólicos pueden tomar dos formas: 
**Soft links** y **Hard links**

<div align="center"><img src="https://user-images.githubusercontent.com/25624961/169720182-200fbe56-cd4c-4709-a678-773e5d7f835f.png" width="600"></div>

Los **Soft links o enlaces suaves** son similares a los accesos directos y pueden apuntar a otro archivo o directorio en cualquier sistema de archivos. 


Los **Hard links o enlaces duros** también son accesos directos para archivos y carpetas, pero *no se puede crear un enlace duro para una carpeta o archivo en un sistema de archivos diferente*. 
Estos se pueden crear de la siguiente manera en los sistemas operativos Linux y Mac.

```bash
ln -s /<path to file/folder to be linked> <path of the link to be created>
```
```bash
ln -s /<ruta al archivo/carpeta que se vinculará> <ruta del vínculo que se creará>
```

`ln` es el comando de enlace. El indicador `-s` especifica que el enlace debe ser **suave**. `-s` también se puede ingresar como `-symbolic`. 
Tenga en cuenta que el comando `ln` crea enlaces **duros** de forma predeterminada. 


El siguiente argumento es la ruta al archivo (o carpeta) que desea vincular. (Es decir, el archivo o carpeta para el que desea crear un acceso directo).  


El último argumento es la ruta para vincularse, es decir, dónde desea que se coloque el acceso directo. 

Este podría ser el escritorio, por ejemplo:

## Linux  

```bash
ln -s /home/name/Documents/MyFolder /home/name/Desktop/MyFolder
```

Para carpetas o archivos con caracteres especiales, como espacios, use comillas alrededor de las rutas. 

```bash
ln -s “/home/name/Documents/My Folder” “/home/name/Desktop/MyFolder”
```

## Mac  

```bash
ln -s /Users/name/Documents/MyFolder /Users/name/Desktop/MyFolder
```

Para carpetas o archivos con caracteres especiales, como espacios, use comillas alrededor de las rutas. 

```bash
ln -s “/Users/name/Documents/My Folder” “/Users/name/Desktop/My Folder”
```


Si descubre que no puede crear un enlace simbólico debido a problemas de permisos, prefije los comandos anteriores con `sudo`.  

![image](https://user-images.githubusercontent.com/25624961/169720646-53342608-62b7-4a82-8fa9-16b713b574ed.png)



El comando `sudo` es una abreviatura de “super user do/super usuario hazlo”, y es un comando bastante peligroso en manos de los inexpertos, ya que permite que los programas se ejecuten como usuario/administrador raíz (root).  

<div align="center"><img src= "https://user-images.githubusercontent.com/25624961/169720706-6acf84a0-654f-49f9-b6f7-3b31826c87b9.png" width="300"></div>

```bash
sudo ln -s /home/name/Documents/MyFolder /home/name/Desktop/MyFolder
```


## Ejercicio:

Aquí hay un ejercicio para demostrar el uso de enlaces simbólicos.  

Primero cree dos carpetas en su carpeta de inicio llamadas `WS1` y `WS2`.

```bash
mkdir WS1 WS2
```
> El comando `mkdir` tiene su origen en las palabras make subdirectory/crear subdirectorio.


Cambie el directorio a la carpeta `WS1` y cree un nuevo archivo dentro de esta carpeta llamado `colores.txt`: 

```bash
cd WS1
touch colores.txt
```
> El comando `touch` se usa principalmente para crear archivos vacíos y cambiar marcas de tiempo de archivos o carpetas 

A continuación, use el comando `cd` de change directory/cambio de directorio para pasar a la carpeta `WS2`   

```bash
cd ../WS2 
```

Ahora vamos a crear un enlace simbólico en este directorio (`WS2`) al archivo `colores.txt` que creamos en la carpeta `WS1`.  

```bash
ln -s /<ruta completa>/WS1/colores.txt colores.txt
```

Tenga en cuenta que la `<ruta completa>` será `/home/<cualquiera que sea el nombre de su carpeta de inicio>/WS1`  

<div align="center"><img src="https://user-images.githubusercontent.com/25624961/169721534-c4cd5ec5-13a0-43d2-b9a1-1e1f828b61c1.png" width="300"></div>

Puede verificar esto escribiendo el comando `pwd` (print working directory/imprimir directorio de trabajo), ya que esto le mostrará la información completa de la ruta. 


Entonces, para crear el enlace simbólico, usamos la siguiente expresión.  

Aquí `myname` es igual al nombre de su carpeta de inicio. Tenga en cuenta que el comando **distinguirá entre mayúsculas y minúsculas**.

```bash
ln -s /home/myname/WS1/colores.txt colores.txt
```

Esto creará un enlace simbólico en su carpeta `WS2` llamado `colores.txt`, que apunta al archivo `colores.txt` en su carpeta `WS1`. 

Escriba el siguiente comando de lista `ls`, para ver la información del enlace simbólico para `colores.txt`   

``bash
ls-l
```

Esto mostrará una salida similar a esta:  

```bash
lrwxr-xr-x 1 myname 1753 44 10 Sep 08:20 colores.txt -> /home/myname/WS1/colores.txt
```

El enlace simbólico `colores.txt` en la carpeta `WS2` ahora apunta al archivo `colores.txt` en la carpeta `WS1`.























