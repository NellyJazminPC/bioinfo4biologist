# FastQC

FastQC es un programa diseñado para detectar problemas potenciales en conjuntos de **datos de secuenciación de alto rendimiento**. Ejecuta un conjunto de análisis en uno o más archivos de secuencia sin procesar en formato **fastq** o **bam** y produce un informe que resume los resultados. 

Su principal objetivo es indicar cualquier área donde los datos de secuenciación se vean inusuales, por ejemplo en su calidad (phred-score) o en el contenido de G-C. El programa no está vinculado a ningún tipo específico de técnica de secuenciación y se puede usar para analizar datos provenientes de una gran cantidad de diferentes tipos de experimentos (secuenciación genómica, ChIP-Seq, RNA-Seq, BS-Seq, etc.).

Para ejecutar el programa, debe ir a la [página web del proyecto](https://www.bioinformatics.babraham.ac.uk/projects/fastqc/) donde puede descargar los paquetes compilados para Windows, MacOS y Linux, además tiene la ventaja de que se puede ejecutar por medio de la línea de comandos o por medio de una interfaz gráfica. En la página del proyecto también hay un [video tutoral](https://www.youtube.com/watch?v=bz93ReOv87Y)

![image](https://user-images.githubusercontent.com/25624961/231903893-89aaa25c-749a-41e1-b6b7-7ef13fa2f6fb.png)


### Instalación

Desde su página podemos descargar FastQC https://www.bioinformatics.babraham.ac.uk/projects/download.html#fastqc

Para **Linux y Windows** podemos descargar el archivo comprimido `FastQC v0.12.1 (Win/Linux zip file)`. En Windows podemos hacer doble click en el archivo ejecutable que está dentro de la carpeta. 


A continuación nos vamos a centrar en como usar FastQC en Linux:


- Lo podemos descomprimir haciendo click derecho y seleccionando la opción **Extraer aquí** o desde la terminal con `unzip fastqc_v0.12.1.zip`.

- Desde la terminal, ingresamos a la carpeta descomprimida y ejecutamos el script **fastqc**:

```console

./fastqc 

```

Se mostrará la interfaz gráfica


<image src="https://user-images.githubusercontent.com/25624961/231905692-394052f1-60a7-4f33-8bda-d1a4747be741.png" width="700">

Seleccionamos la opción **File** > **Open** y buscamos el archivo con las secuencias que queremos analizar. 
  
* Puedes ver que ocurre al abrir el archivo **sample_11000_12000.bam** que esta en la carpeta **SESION_2** de **BfB_datos**?

  ---------
  
Por ejemplo, en la siguiente imagen vemos los resultados que se obtuvieron con FastQC para un archivo con más de 800 mil lecturas de secuencias:
  
  
![image](https://user-images.githubusercontent.com/25624961/231906856-fe392a49-55c9-48e8-8f36-778bec5d49b1.png)
  

Para una mejor interpretación de los resultados del reporte se recomienda revisar el [manual de FastQC](https://dnacore.missouri.edu/PDF/FastQC_Manual.pdf) 
  

![image](https://user-images.githubusercontent.com/25624961/231906884-bd5e6d17-9ba1-4a7e-b97f-f30aff54d606.png)

El resultado se puede guardar en formato **`.html`** con **File** > **Save report**
  
  
**Pero si tenemos muchos archivos, unos 100 archivos, sería muy tedioso hacer este proceso uno por uno, ¿habrá una forma de automatizarlo?**
  
  Para ello podemos utilizar los comandos, ya sea con un script o directamente en la terminal.
  
```bash
  
fastqc “archivo_fastq” -o “directorio_salida”  
```
  

Ejemplo de una muestra usando las lecturas de un archivo comprimido **.gz** e indicando que el resultado, es decir, el reporte en **.html** se guardaría en el directorio actual (`-o .`):
  
```bash
fastqc ../181004_curso_calidad_datos_NGS/fastq_raw/S3_R1.fastq.gz -o . 
```

**NOTA**: es importante recordar que debemos estar dentro de la carpeta de **FastQC/**, en donde se encuentra el archivo ejecutable **fastqc**
  
  Ahora, si queremos hacerlo para todos los archivos **fastq.gz** que se encuentran en una carpeta, podrían ser 1, 10 o cientos? 
  
  Si, solo necesitamos usar el comodín `*`
  
  
```console
  
fastqc ../181004_curso_calidad_datos_NGS/fastq_raw/*.fastq.gz -o . 
  
```
  
  **¿Cómo sería un script?**
  
  

  
  
  
## Otra forma de instalación con Conda

En la página https://anaconda.org/bioconda/fastqc podemos encontrar algunas líneas de comandos que desde la terminal nos permitiran instalar **FastQC**
