# Comenzando con `wc` para contar ...

El comando `wc` de UNIX es una herramienta útil para **contar** el número de líneas, palabras y caracteres en un archivo. 

Para demostrar el comando `wc`, creemos un archivo de texto para darle algo que contar. 

Crea un archivo usando nano, llamado `fruit.txt`

<img src="https://user-images.githubusercontent.com/25624961/169882744-a1eb7327-c37b-4606-9aed-c2921d36188d.png" width="450">

Luego escribe las siguientes lineas:

```
Orange

Apple

Pear

Banana

Grape
```

<img src="https://user-images.githubusercontent.com/25624961/169883498-359589bf-248d-43fa-a261-c1cfbfbd7ead.png" width="450">

Presione `Ctrl` + `x` para salir, escriba `y` y presione `Enter` para guardar los cambios y escribir el archivo en el disco.  

<img src="https://user-images.githubusercontent.com/25624961/169883811-9957bf24-469d-44f8-93ae-4e874a9dea14.png" width="450">

Escriba `ls` para enumerar el contenido del directorio y verá un archivo llamado `fruit.txt`

`ls`  

<img src="https://user-images.githubusercontent.com/25624961/169883979-37e95e47-80d2-45ca-9266-81034459fa84.png" width="450">


**El siguiente terminal detalla varias salidas wc:**  


`wc fruit.txt` da una salida completa del **número de líneas (5)**, **palabras (5)** y **caracteres (31)**. 

**Se pueden obtener salidas separadas agregando parámetros adicionales:** 

- `wc -l` genera el número de líneas en el archivo fruit.txt, es decir, **5**

- `wc -w` genera el número de palabras en el archivo fruit.txt, es decir, **5**

- `wc -c` genera el número de caracteres en el archivo fruit.txt, es decir, **31**


<img src="https://user-images.githubusercontent.com/25624961/169884105-050bcfef-b109-4c78-b6d3-5bed19ce8b3a.png" width="450">


Se puede encontrar más información sobre el comando wc y sus parámetros accediendo al siguiente enlace. 

- https://linux.die.net/man/1/wc  

O accediendo a las páginas del manual de `wc` dentro de una sesión de terminal, escribiendo:  

`man wc`  

<div align="center"><img src="https://user-images.githubusercontent.com/25624961/169882946-395c699e-92d8-4c9c-8630-31e163cb66e4.png" width="450"></div>



