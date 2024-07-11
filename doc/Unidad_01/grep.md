# Coincidencia de patrones: `grep` 

Una cosa que debemos hacer a menudo es verificar si un archivo o conjunto de archivos en particular contiene una cadena de caracteres.  

Este proceso se conoce como **coincidencia de patrones** (pattern matching). 

Usando la línea de comando, esto se hace con el comando `grep`.  

### `grep`

El nombre deriva del antiguo editor de Unix, **ed**, y significa **"búsqueda global de una expresión regular e impresión de líneas coincidentes"** o en inglés “**g**lobally search for a **r**egular **e**xpression and **p**rint matching lines”. 

Una **expresión regular** (regular expression o **RegEx**) es una cadena de caracteres que define un patrón de búsqueda. 

Las expresiones regulares pueden volverse increíblemente complejas, involucrando cualquier cantidad de caracteres especiales, atajos y agrupaciones, por lo que, por ahora, solo nos ocuparemos de las búsquedas que involucran texto sin formato.  

<div align="center"><img src="https://user-images.githubusercontent.com/25624961/169897643-885058be-d528-4421-aec6-5e2bc8ecbcbc.png" width="300"></div>
  
  
**En su forma más simple, `grep` se ejecuta así en un solo archivo:** 

```
grep -F querystring filename.txt
```

Como salida, muestra una lista línea por línea de todas las líneas que contienen la cadena de consulta de texto.  

Tenga en cuenta que si la cadena de consulta incluye **caracteres de espacio**, se deben colocar **comillas** en cualquiera de sus extremos.  

Además, la opción **-F** significa que estamos buscando **cadenas fijas** en lugar de expresiones regulares. Esto puede ser omitido por usuarios avanzados que busquen expresiones regulares complicadas. 


**Grep** tiene muchas opciones de línea de comandos para refinar las búsquedas y cambiar el formato de salida.  

Ejecute lo siguiente para ver todas las opciones disponibles:

```bash
man grep
```
---------

## Pongamos a prueba a **grep**

- Crea un archivo **.txt** con nano y escribe las siguientes lineas
- Recuerda dejar los espacios como se indican a continuación:

```bash
Biologia es Genialx1000
biologia es genialx1000
genialx1000 es biologia
genialx1000 es Biologia
genialx1000

biologia
biologia es biologia

Masa
Mesa
MAsa
MEsa

Linux es un gran SO
Me gusta Linux Ubuntu 22
Este es un numero aleatorio 1516548132
Algunas veces el teclado se me traba como en BIologiA

```
Primero revisar (imprime) todo el archivo que acabas de crear

```bash
cat words.txt 
```

La primera palabra que buscarás es **biologia**

```bash
grep biologia words.txt 
```

Si quieres que no distinga entre mayúsculas y minúsculas puedes usar la opción **-i**

```bash
grep -i biologia words.txt 
```

Ahora empecemos a usar expresiones regulares:

```bash
grep [Bb]iologia words.txt 
```
¿Qué hizo **[Bb]**?

Podemos seguir buscando otras palabras, ahora prueba con **mesa**, pero da la indicación de que no distinga entre mayúsculas y minúsculas:

```bash
grep -i mesa words.txt 
```
Y ahora con **masa**

```bash
grep -i masa words.txt 
```

Apliquemos ahora lo aprendido y usa una expresión regular para que obtengas todas las palabras que empiecen con **M** pero que puedan continuar con **E** o **e** y que terminen con **sa**

```bash
#Para obtener MEsa y Mesa

grep M[Ee]sa words.txt 

#Para obtener Masa y MAsa

grep M[aA]sa words.txt 
```
¿Qué pasa si utilizas la línea `grep M*sa words.txt`

Podría ser lo mismo que utilizar `grep M[EeAa]sa words.txt` ?

Revisa nuevamente tu archivo .txt

```bash
cat words.txt 
```

Ahora, que ocurre con este caracter **^** ?
Es una expresión regular que indica **al inicio de la línea**

```bash
grep ^Biologia words.txt 
```
¿Qué observas? Hizo distinción entre mayúsculas y minúsculas?

```bash
grep ^[Bb]iologia words.txt 
```

Probemos otro caracter, **$**. 
El **$** indica que es **el final de la línea**

```bash
grep [Bb]iologia$ words.txt 
```

Prueba las siguientes lineas de comandos y observa cuál es la diferencia

```bash

grep biologia$ words.txt 

grep ^biologia$ words.txt 
```

¿Podemos utilizar grep para buscar patrónes de números?

Prueba las siguientes líneas:

```bash
grep [0-9] words.txt 
#Ahora usemos $, ¿cambio el número de lineas?
grep [0-9]$ words.txt 
#Y si agregamos más [] a la expresión regular?
grep [0-9][0-9][0-9]$ words.txt 
```

Vuelva a imprimir el archivo original

```bash
cat words.txt 
```

Último tip para este mini tutoral de **grep**

¿Qué ocurre con la siguiente línea de comando?

```bash
grep ^$ words.txt 
```
¿y si utilizamos la opción **-v**?

```bash
grep -v ^$ words.txt 
```




## Ejercicio: 

Utilizando esta información y los archivos de la carpeta que se descargo al inicio, responda las siguientes preguntas:  


- Pregunta 1: ¿Qué archivos contienen la palabra "difference"?

- Pregunta 2 ¿Cuántas veces aparece la palabra “Premium” en el archivo Diamonds_fix.txt?

- Pregunta 3 ¿Cuántas líneas en el archivo Diamonds_fix.txt no incluyen la frase “Very good”?

<div align="center"><img src="https://user-images.githubusercontent.com/25624961/169896728-6275c51b-44cb-4e03-938a-f4cf408da088.png" width="400"></div>

#### Respuestas: [solo después de haberlo intentando](R_grep.md)
