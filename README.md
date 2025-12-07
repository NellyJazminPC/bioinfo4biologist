# CURSO: Introducción a la Bioinformática

---

Curso teórico-práctico para principiantes en la bioinformática.

El curso se ofrecerá en la modalidad virtual con cuatro horas de lunes a viernes durante cuatro semanas (80h).

---

### Instructora

**M. en C. Nelly Jazmín Pacheco Cruz**

---

### Objetivo general

Conocer y aplicar las bases teóricas y prácticas de la bioinformática nivel básico, principalmente en el procesamientos y análisis de datos genéticos.

### Objetivos específicos

- Adquirir habilidades básicas en el uso del shell de Unix/Linux a través de la terminal.
- Conocer el manejo básico de la programación en R en RStudio
- Aplicar herramientas bioinformáticas para realizar análisis de secuencias genéticas.

---

## Temario

### [Unidad 1](doc/Unidad_01/)

- Presentaremos Linux y veremos por qué se usa ampliamente en bioinformática.
- Trabajaremos sobre la línea de comandos de Linux y explicaremos la estructura de directorios del sistema de archivos.
- Algunos comandos esenciales de Linux demostrarán cómo acceder, manipular y editar archivos de texto.

1. Introducción a la Bioinformática: Presentación ["Bioinformática, si no es ahora será mañana"](https://docs.google.com/presentation/d/e/2PACX-1vTJithkqakvslzBI_T1MJisIqemVi-fdU9uDC5SB6IR7GK3zc3oAEHFbPJiciHMbJT9yvuSovfOdTJk/pub?start=true&loop=false&delayms=60000)

2. Sistema linux y comando básicos en la terminal

    2.1 [¿Qué es Linux y por qué usarlo?](/doc/Unidad_01/Linux.md)

    2.2 [La terminal y la línea de comandos](/doc/Unidad_01/Terminal.md)

    2.3 [El sistema de archivos de Linux: directorios y archivos](/doc/Unidad_01/Sistema_archivos_linux.md)

    2.4 [Conceptos básicos de la línea de comandos](/doc/Unidad_01/linea_comandos.md)

    2.5 [Archivos, propiedad y permisos](/doc/Unidad_01/Archivos_permisos.md)

    2.6 [Pistas, tips y atajos](https://drive.google.com/file/d/1Fwb7rzihKH6SpdX6pCLlJZqEppxmxBpI/view?usp=sharing)

3. Manipulación y procesamiento de archivos

    3.1 [Edición de texto y escritura de archivos](/doc/Unidad_01/Edicion_texto.md)

    3.2 [Acceso al contenido del archivo](/doc/Unidad_01/Acceso_cont_archivo.md)

    3.3 [Enlaces simbólicos y su uso](/doc/Unidad_01/Enlaces_simbolicos.md)

    3.4 [Comenzando con `wc`](/doc/Unidad_01/wc.md)

    3.5 [Manipulación de archivos: `sort` y `uniq`](/doc/Unidad_01/sort_uniq.md)

    3.6 [Coincidencia de patrones: `grep`](/doc/Unidad_01/grep.md)

    3.7 [Sustituciones usando `sed`](/doc/Unidad_01/sed.md)

    3.8 [Procesamiento de archivos con `AWK`](/doc/Unidad_01/awk.md)

    3.9 [Test](/doc/Unidad_01/Test_parte1.md)

### [Unidad 2](doc/Unidad_02/)

- Se introducirá el concepto de variables.
- Se mostrará cómo instalar un software de bioinformática ampliamente utilizado, FastQC
- Breve introducción de Docker, un sistema operativo para contenedores.

1. [Introducción a las variables de entorno (Environment Variables)](doc/Unidad_02/env_shell_var.md)

2. Instalación de software de muestra

    2.1 [Una instalación de software de muestra - Samtools](doc/Unidad_02/instalacion.md)
    
    2.2 [Probando FastQC](doc/Unidad_02/FastQC.md)

3. Introducción a Docker

    3.1 [¿Qué es Docker?](doc/Unidad_02/Docker_intro.md)

    3.2 [Instalación y comandos básicos](doc/Unidad_02/Docker_commands.md)

4. Introducción a Git y Github

    4.1 [Un breve tutorial de Github Desktop](doc/Unidad_02/GitHub/README.md)

    4.2 [Descripción de los comandos básicos - Terminal](doc/Unidad_02/GitHub/comandos.md)

### [Unidad 3](doc/Unidad_03/)

1. Escribir y documentar scripts informáticos
    
    1.1 [Reproducibilidad en los scripts](doc/Unidad_03/Reproducibilidad.md)
    
    1.2 [Pasos para crear un script](doc/Unidad_03/resumen_scripts.md)

2. Variables condicionales y for loops

3. [Funciones básicas en R](doc/Unidad_03/Programando_en_R.md)

---

### Dinámica del Curso
Después de la sesión se dejará una serie de ejercicios para que los estudiantes los resuelvan y en la siguiente sesión se revisarán sus respuestas y dudas.

Las sesiones duraran dos horas y habrá material extra disponible para que los estudiantes pueden consultarlo en cualquier momento.

---

## Calendario
Horario: 8:00 a 14:00 h

| Día | Actividad |
| --- |  --- |
| Martes  | 1.- Introducción a la Bioinformática |
|      |  2.- Sistema linux y comando básicos en la terminal |
|        |  3.- Manipulación y procesamiento de archivos |
|Jueves  | 4.- Introducción a las variables de entorno e instalación de programas |
|              | 5.- Introducción a Git y Github |
|              | 6.- Escribir y documentar scripts informáticos |
|Jueves  | 7.- Variables condicionales y for loops |
|          | 8.- Funciones básicas en R |

---
### Pre-requisitos

- Computadora con mínimo 4 GB de RAM, espacio libre en su disco duro (aprox. 2 GB), conexión a internet y el sistema operativo Linux (Ubuntu) o Mac Os.
- Este curso esta orientado a principiantes en la bioinformática por lo que no es necesario un conocimiento previo en la programación.


Da clink en los siguientes apartados y sigue las instrucciones:

1.- Para abrir una terminal con un entorno linux o parecido si estas en otro sistema operativo
- [Configuración de Linux o de un entorno similar a Linux y descarga de datos](Inst_conf_Linux.md)

---

## Material extra:

- **Glosario**

Para ir comenzando es importante revisar el siguiente glosario con algunos de los términos que más se utilizaran a lo largo del curso:
- [Glosario](Glosario.md)
- [Glossary](Glossary.md)

---

### Sitios recomendados y tomados como referencia:

- Curso **Bioinformatics for Biologists** (futurelearn.com)
- Cursos en DataCamp. Por ejemplo [Introducción a R](https://www.datacamp.com/courses/free-introduction-to-r)

### [Otros sitios recomendados](https://github.com/NellyJazminPC/bioinfo4biologist/blob/main/Otros_recursos_recomendados.md)


### Literatura recomendada:

- [Not just for programmers: How GitHub can accelerate collaborative and reproducible research in ecology and evolution](https://besjournals.onlinelibrary.wiley.com/doi/full/10.1111/2041-210X.14108)
- [Improving code reproducibility: Small steps with big impacts](https://communities.springernature.com/posts/improving-code-reproducibility-small-steps-with-big-impacts?utm_source=newsletter_mailer&utm_medium=email&utm_campaign=newsletter)
- [Is AI leading to a reproducibility crisis in science?](https://www.nature.com/articles/d41586-023-03817-6)
- [Scalable, accessible and reproducible reference genome assembly and evaluation in Galaxy](https://www.nature.com/articles/s41587-023-02100-3)

Nuevos paquetes de R en desarrollo - con objetivos biológicos 
- [callsync: an R package for alignment and analysis of multi-microphone animal recordings](https://www.biorxiv.org/content/10.1101/2023.02.07.527470v2?rss=1)
- [Rbims: Herramientas R para reconstruir metabolismos bin](https://github.com/mirnavazquez/RbiMs)
- 
