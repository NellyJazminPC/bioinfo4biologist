### Edición de texto y escritura en archivos

Edición de texto para entorno Linux 

GNU nano es un editor de texto para entornos similares a Unix u otros entornos operativos que utilizan una interfaz de terminal/línea de comandos.  

Nano también se puede usar con dispositivos señaladores, como un mouse para activar las funciones de la barra de herramientas y colocar un cursor.  

Hay otras herramientas de edición de archivos disponibles, como Emacs, vi y pico, pero para los fines de este ejemplo, utilizaremos el editor de texto nano.


<img src= "https://user-images.githubusercontent.com/25624961/169718257-ed3fb3aa-d8e2-4fba-82ec-40fd4861aa6d.png" width="300">

**Prática** 

Para demostrar la creación de un nuevo archivo en nano, abra una terminal y escriba el siguiente ejemplo para crear un nuevo archivo llamado `fruta.txt`  

```bash
nano fruta.txt
```

Se iniciará el editor nano y ahora es posible escribir libremente dentro de la ventana. 

<img width="700" alt="Captura de Pantalla 2022-05-22 a la(s) 17 19 14" src="https://user-images.githubusercontent.com/25624961/169718400-c20aa727-abc9-45dd-ad83-14cae7d9f27c.png">


Ahora ingrese los siguientes datos y presione la tecla `Enter` después de cada elemento.  


**Naranja, Pera, Manzana, Platano, Uva, Satsuma, Melon**
_por ahora, evitamos usar los acentos o elementos que podrían generar confusión al ejecutar comandos_

<img width="700" alt="Captura de Pantalla 2022-05-22 a la(s) 17 22 18" src="https://user-images.githubusercontent.com/25624961/169718477-6595a5db-5043-46e5-84e6-8a7f45b6fe0b.png">

Seleccione `Ctrl + x` para salir del editor nano y escriba `y` para guardar los cambios

<img width="700" alt="Captura de Pantalla 2022-05-22 a la(s) 17 23 39" src="https://user-images.githubusercontent.com/25624961/169718519-cd8f8279-cf6c-4a0e-b343-96968e95b80c.png">

Aparecerá un mensaje para guardar el archivo. Presione la tecla `Enter` para guardar y esto escribirá el archivo en el disco. 

<img width="700" alt="Captura de Pantalla 2022-05-22 a la(s) 17 24 47" src="https://user-images.githubusercontent.com/25624961/169718550-23377038-62ed-4b42-8e75-97f1a93d2be8.png">


Esto lo regresará a la ventana de la terminal. Escribir `ls` le mostrará el nuevo archivo `fruta.txt` que ha creado.  

Escriba:

```
ls
```

Esto mostrará el archivo `fruta.txt` que ha creado.

Nano tiene una amplia gama de capacidades de edición, que se destacan en el siguiente enlace. 

https://www.nano-editor.org/dist/v2.2/nano.html 


![image](https://user-images.githubusercontent.com/25624961/169718678-6c4422fc-db5a-4376-b1b1-20aa9a566e06.png)

**Vim** 
:wq — save and exit 
:q! — quit, losing all changes
