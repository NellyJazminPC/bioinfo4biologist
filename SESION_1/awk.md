# Procesamiento de archivos con AWK

`AWK` es un lenguaje de programación. Lleva el nombre de sus tres desarrolladores: Alfred Aho, Peter J Weinberger y Brian KernIghan. Es particularmente útil para procesar archivos de texto y extraer datos, especialmente cuando un archivo está dividido en columnas o delimitado por un carácter específico (por ejemplo, una coma). 

`AWK` es un paquete estándar en la mayoría de las versiones de Linux, así como en MacOS, generalmente se escribe en mayúsculas aunque **el comando en sí está en minúsculas**.  

`AWK` se puede usar para escribir scripts y programas complejos pero, por ahora, lo usaremos directamente en la línea de comandos. Este comando, es un archivo línea por línea y divide cada línea en columnas según un carácter delimitador, el delimitador predeterminado es un carácter de espacio único.  


Para los comandos de ejemplo que se dan a continuación, trabajaremos con dos archivos de la carpeta descargada al inicio. Estos son `Diamonds.csv`, que contiene valores separados por comas y `Diamonds_fix.txt`, que está delimitado con tabulaciones. Ambos archivos contienen los mismos datos en 10 columnas: **carat, cut, color, clarity, depth, table, price, "x", "y" y "z"**.  

Los últimos 3 (**x**, **y** y **z**) se relacionan con las dimensiones del diamante en cuestión. Para seguir los comandos a continuación, cambie el directorio a la ruta que contiene los datos de su curso. 

Antes de comenzar, puede ser útil revisar el manual del comando para ver las opciones disponibles para AWK y también estudiar cómo se ven algunos de los caracteres delimitadores de uso común.  

```bash
man awk
```


**El primer comando a ejecutar es:**  

```bash
awk -F”\t” ‘{print $1}’ Diamonds_fix.txt
```

Esto imprimirá el valor en la primera columna del archivo **Diamonds_fix.txt**. 


### Una pequeña explicación:  

- La opción **-F”\t”** le dice a `AWK` que el delimitador es una pestaña, que generalmente se representa como **\t** en la línea de comando.  

- Cada columna delimitada está representada por un símbolo **$** seguido de un número. El número representa el número de columna, por lo que **$1** es la columna 1, **$2** es la columna 2, etc. **$0** imprime la línea completa. 


Para cada línea del archivo, `AWK` ejecutará cualquier comando que esté contenido entre corchetes. En este caso, le estamos pidiendo que imprima el valor en la primera columna.    

Es posible que desee cambiar este comando para que se ejecute en el archivo `Diamonds.csv` cambiando el delimitador en la opción **-F**.  

-------------

Al igual que `grep`, `AWK` se puede usar para filtrar archivos línea por línea, según el texto que contienen. Sin embargo, como `AWK` divide las líneas en columnas según el delimitador, hay **más precisión disponible**. `AWK` puede imprimir solo líneas que tienen un valor específico en una columna específica. Por ejemplo: 

```bash
awk -F”\t” ‘$2==”Ideal” {print $0}’ Diamonds_fix.txt
```

Esto imprime solo las líneas de **Diamonds_fix.txt** en las que la columna 2 (**corte**) contiene el valor "Ideal".

### Alguna explicación: 

- El símbolo **==** significa 'es igual a'. Esta es una convención común en los lenguajes de programación con un solo símbolo igual que generalmente significa establecer el valor para ser.  

- El comando de impresión solo ocurre cuando la columna 2 contiene el valor 'Ideal'.  

En general, los comandos `AWK` se componen de dos partes, un patrón, como '$2==”Ideal”', y una acción, entre llaves, como '{print $0}'. 

El patrón define las líneas a las que se aplica la acción. De hecho, podríamos pasar por alto la acción en este ejemplo, ya que `AWK`, por defecto, imprimirá la línea completa como salida. Asimismo, como vimos en el primer ejemplo, si se omite el patrón, `AWK` realizará la acción en cada línea. 

Los patrones se pueden combinar usando el símbolo **&&** (para y) para que una línea se imprima solo si se cumplen dos o más condiciones. Por ejemplo:  

```bash
awk -F”\t” ‘$2==”Ideal” && $4==”SI2”’ Diamonds_fix.txt
```

Este comando imprimirá todas las líneas en las que la columna 2 tenga el valor 'Ideal' y la columna 4 tenga el valor 'SI2'. 


Del mismo modo, usando el **||** símbolo (para o), podemos imprimir si se cumple cualquiera de dos o más condiciones. Por ejemplo:  

```bash
awk -F”\t” ‘$2==”Ideal” || $4==”SI2”’ Diamonds_fix.txt
```

Esto imprimirá una línea, la columna 2 tiene el valor 'Ideal' o la columna 4 tiene el valor 'SI2'.  

Además de cadenas, `awk` también puede filtrar valores numéricos. Por ejemplo:  

```bash
awk -F”\t” ‘$1>1’ Diamonds_fix.txt
```

Esto imprimirá todas las líneas en las que la primera columna tenga un valor mayor que 1. 

Notará que la primera línea de valores de encabezado está incluida en esto. Podemos omitir esto simplemente agregando la condición 'FNR>1': 

```bash
awk -F”\t” ‘FNR>1 && $1>1’ Diamonds_fix.txt
```

FNR representa el número de línea actual, por lo que le pedimos a `AWK` que imprima la línea si es mayor que 1 (es decir, omite la línea 1).  

<div align="center"><img src="https://user-images.githubusercontent.com/25624961/170142733-a9183055-47ee-44e6-8f92-acad3b566a4c.png" width="600"></div>

