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

```bash
grep -F _querystring_ filename.txt
```

Como salida, muestra una lista línea por línea de todas las líneas que contienen la cadena de consulta de texto.  

Tenga en cuenta que si la cadena de consulta incluye **caracteres de espacio**, se deben colocar **comillas** en cualquiera de sus extremos.  

Además, la opción **-F** significa que estamos buscando **cadenas fijas** en lugar de expresiones regulares. Esto puede ser omitido por usuarios avanzados que busquen expresiones regulares complicadas. 


**Grep** tiene muchas opciones de línea de comandos para refinar las búsquedas y cambiar el formato de salida.  

Ejecute lo siguiente para ver todas las opciones disponibles:

```bash
man grep
```

## Ejercicio: 

Utilizando esta información y los archivos de la carpeta que se descargo al inicio, responda las siguientes preguntas:  


- Pregunta 1: ¿Qué archivos contienen la palabra "difference"?

- Pregunta 2 ¿Cuántas veces aparece la palabra “Premium” en el archivo Diamonds_fix.txt?

- Pregunta 3 ¿Cuántas líneas en el archivo Diamonds_fix.txt no incluyen la frase “Very good”?

<div align="center"><img src="https://user-images.githubusercontent.com/25624961/169896728-6275c51b-44cb-4e03-938a-f4cf408da088.png" width="400"></div>

#### Respuestas: [solo después de haberlo intentando](R_grep.md)
