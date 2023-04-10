# Manipulación de archivos: `sort` y `uniq` 

**¿Qué son `sort` y `uniq`?** 

La ordenación y manipulación de datos en archivos de texto basados en Linux se puede realizar mediante las utilidades `sort` y `uniq`.  

El comando `sort` que significa **ordenar**, ordena una lista de elementos alfabética y numéricamente, mientras que el comando `uniq` elimina las líneas duplicadas adyacentes en una lista.  

**Realiza el siguiente ejemplo:** 

Primero, usando el editor `nano` (o cualquier otro editor de texto que prefieras) crea un archivo de texto con el siguiente contenido (una fruta por línea):    

orange pear apple banana grape satsuma melon pomegranate banana grape.  

Nómbrelo `fruit.txt`


## ¿Cómo usar `sort`?

El comando `sort` acepta la entrada de un archivo basado en texto y muestra sus resultados en la pantalla.  

```
sort fruit.txt
```  


Los resultados también se pueden enviar a otro archivo de texto.  

```bash
sort fruit.txt > sorted_fruit.txt
```

Puede **invertir** el orden de clasificación con la opción **-r**  

```bash
sort -r fruit.txt
```

También es posible codificar el orden de las líneas con la opción **-R**  

```bash
sort -R fruit.txt
```

La opción **-f** fuerza a la ordenación a **ignorar las mayúsculas y minúsculas** al ordenar las líneas.  

```bash
sort -f fruit.txt
```

La opción **-s** estabiliza la ordenación generando líneas idénticas en el mismo orden en que aparecieron en el archivo original. 

```bash
sort -s fruit.txt
```

Las **líneas duplicadas** se pueden **eliminar** con la opción **-u** 

```bash
sort -u fruit.txt
```

## ¿Cómo usar `uniq`?

El comando `uniq` acepta la entrada de un archivo basado en texto y elimina las líneas repetidas, solo si son adyacentes entre sí.  

Es por eso que se usa junto con `sort` para eliminar líneas no adyacentes.  

```bash
sort fruit.txt | uniq
```

Las diferencias entre mayúsculas y minúsculas se pueden ignorar al eliminar líneas adyacentes duplicadas, usando la opción **-i**.  

```bash
sort fruit.txt | uniq -i
```

Combinando **-i** con la opción **-c** para `uniq`, cuenta el número de veces que aparece una línea en un archivo.  

```bash
sort fruit.txt | uniq -ic
```

Usar la opción **-d** con **-i** invierte el comportamiento de `uniq` y solo imprime las líneas duplicadas. 

```bash
sort fruit.txt | uniq -id
```

Puede ser útil canalizar esta salida a la entrada de otro comando `uniq`. 

```bash
sort fruit.txt | uniq -id | uniq -f 1 
```


Esto listará los nombres de frutas únicas en `fruit.txt` (`uniq -id`). Luego, esta salida se canaliza a `uniq -f 1`, que ignora el primer campo en cada línea de entrada al hacer comparaciones (`-f 1` es igual al primer campo).  

Para obtener más información sobre sort y uniq, visite https://www.linode.com/docs/guides/manipulate-lists-with-sort-and-uniq/  

<div align="center"><img src="https://user-images.githubusercontent.com/25624961/169892272-8d2b3294-b50b-4bc8-a02a-0d89f4a546d7.png" width="400"></div>

## Ejercicio: 

¿Cómo extraería solo las líneas que se repiten más de una vez en el archivo `fruit.txt` para enviar la salida a un nuevo archivo llamado `repeat_fruit.txt`? 

## Respuesta:  
Pasa el cursor sobre la imagen  

<img src="https://user-images.githubusercontent.com/25624961/169893508-7113c53a-0c85-4112-94b9-a2c18be1860c.png" alt="Smiley face" width="600" title="sort fruit.txt | uniq -id > repeated_fruit.txt">
