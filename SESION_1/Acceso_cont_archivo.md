# Acceso al contenido del archivo 

Aquí hay algunos comandos que puede usar para mostrar el contenido del archivo.

En esta sección se utilizará el archivo `Diamonds.csv` de la carpeta que se descargo al inicio. 

- **Si no lo hiciste, aquí dejo nuevamente el [link](https://drive.google.com/file/d/1mEcUvcyUYiGdv81ose5aDma6OCNctsLl/view?usp=sharing).** 
- Descarga toda la carpeta, descomprímela e ingresa al directorio `SESION_1` usando el comando `cd`


Compruebe que el archivo está en el directorio. 

```bash
$ls
Diamonds.csv
```

## cat  

**cat** es la abreviatura de concatenar (concatenate) y muestra el contenido de un archivo. 
Si se trata de un archivo muy largo, la salida ocupará más espacio del que puede mostrar el terminal. 

Para mostrar el contenido de `Diamonds.csv`, escriba  

```bash
cat Diamonds.csv
```


Esto generará más contenido del que la pantalla puede mostrar.  

![image](https://user-images.githubusercontent.com/25624961/169719188-386bf8a4-d91e-4154-aae1-9666071f499d.png)

## less 

Si desea ver un archivo muy largo, use el comando `less`, ya que mostrará una página a la vez.  
Puede desplazarse hacia arriba y hacia abajo por el archivo. 

Escriba
```bash
less Diamonds.csv
```

Esto producirá una salida que llena la pantalla.  

![image](https://user-images.githubusercontent.com/25624961/169719235-85c06f24-90ab-4943-b40a-dbc8cf3bfaae.png)

Como puede ver, `Diamonds.csv` está resaltado en la parte inferior de la página y la salida se puede controlar con varias opciones.   

Algunos de los conceptos básicos se muestran a continuación.  

|      |      |
| ---- | ---- |
| espacio (tecla) | avanza una página|
| flechas hacia abajo y hacia arriba o j y k | desplazarse una línea |
| / | busca texto|
| q | sale del shell|
| h | muestra la pantalla de ayuda |

## `head` y `tail`  

A veces, solo desea echar un vistazo rápido al principio o al final de un archivo.  

Esto es útil para tener una idea del contenido de archivos muy grandes y para ver las últimas adiciones a cosas como registros que rutinariamente tienen nuevos datos adjuntos. 



Como ejemplo, escriba 

```bash
head Diamonds.csv
```


Esto mostrará las primeras 10 líneas del archivo Diamonds.csv 

![image](https://user-images.githubusercontent.com/25624961/169719434-ffacd5f4-9a41-4d94-9978-fad1b723c7ce.png)


Para mostrar la parte inferior del archivo Diamonds.csv, escriba  

```bash
tail Diamonds.csv
```

Esto mostrará las 10 líneas inferiores del archivo Diamonds.csv.  

![image](https://user-images.githubusercontent.com/25624961/169719456-249d2478-7db9-4cdf-95c1-a9bd648841d6.png)

Para mostrar dos líneas en la parte superior del archivo, escriba 

```bash
head -2 Diamonds.csv
```

![image](https://user-images.githubusercontent.com/25624961/169719508-50f3aa25-5d03-41c9-8177-18cb2829975f.png)


Por el contrario, para mostrar dos líneas en la parte inferior del archivo, escriba 

```bash
tail -2 Diamonds.csv
```

![image](https://user-images.githubusercontent.com/25624961/169719512-8d264f4b-e8fc-4f35-ba93-b3fbbc5eeaea.png)


### Resumen: :D
<img src= "https://user-images.githubusercontent.com/25624961/169719589-e12c6af8-8d8f-4a45-b704-eb34505ab7ac.png" width= "500">





