# Una instalación de software de muestra - Samtools 

Puedes comenzar con este [video](https://drive.google.com/file/d/1WcBkxgg1BDXfIDNE_I5M6kf_JK81hxKY/view?usp=sharing)  
Siga las instrucciones del video y/o del texto a continuación, que muestran cómo instalar Samtools. 


**Samtools** es un conjunto de utilidades para interactuar y posprocesar alineaciones de lectura de secuencias cortas de ADN en los formatos **SAM** (Alineación/mapa de secuencia), **BAM** (Alineación/mapa binario) y **CRAM**.  


Samtools es un conjunto de utilidades para interactuar y posprocesar alineaciones de lectura de secuencias cortas de ADN en los formatos SAM (Alineación/mapa de secuencia), BAM (Alineación/mapa binario) y CRAM.

Las herramientas admiten tareas complejas, como la identificación de variantes (variant calling) y la visualización de alineaciones, así como la extracción de datos, la clasificación, la conversión de índices y formatos.  

La instalación de Samtools se realiza mediante un gestor de paquetes y entornos denominado Conda. 

<div align="center"><img src="https://user-images.githubusercontent.com/25624961/170307888-3c44ba7f-bdf3-4f8e-ae05-9d6a5a2174da.png" width="400"></div>



Este es un código abierto y multiplataforma escrito en el lenguaje de programación Python que permite al usuario instalar fácilmente otros paquetes de software sin tener que instalar las dependencias manualmente.  

Conda también puede administrar proyectos que contienen código escrito en cualquier idioma y permite a los usuarios cambiar entre versiones de paquetes y descargar e instalar actualizaciones desde un repositorio de software.  

Para instalar **Samtools**, primero vaya al enlace de instalación de Conda: 


https://docs.conda.io/en/latest/miniconda.html para instalar el instalador de Conda para su sistema operativo, Mac, Linux o Windows.  


## Instalación de Samtools en Ubuntu  

Abra una terminal e ingrese los siguientes comandos para actualizar el sistema y actualizar los paquetes instalados. Presione enter después de ingresar cada línea de código. Puede ingresar los comandos manualmente o cortarlos y pegarlos en la ventana del terminal.  

```bash
sudo apt update
```

```bash
sudo apt upgrade
```

A continuación, descargue el script de instalación de Miniconda 


https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh 


Dirigete a Descargas. 

```bash
cd Downloads
```

Y luego ejecute el script.  

```bash
bash Miniconda3-latest-Linux-x86_64.sh
```


Toque la barra espaciadora para bajar el acuerdo de licencia y para aceptar los términos escribiendo *yes*. Presiona enter para confirmar la ubicación de descarga. Luego escriba *yes* cuando se le solicite inicializar Miniconda.  

*Miniconda ya está instalada.*

A continuación, instale `htslib` para acceder a la funcionalidad de la línea de comandos de Samtools. 

```bash
conda install -c bioconda htslib
```

Continúe escribiendo *y*. 


Finalmente, instale Samtools ingresando el siguiente comando. 

```bash
conda install -c bioconda samtools
```

Proceda de nuevo escribiendo *y*.

## Instalación de Samtools en Mac 

Descargue el instalador de Miniconda para macOS desde el siguiente enlace:  


https://docs.conda.io/en/latest/miniconda.html  


A continuación, instale `htslib` para acceder a la funcionalidad de la línea de comandos de Samtools. 

```bash
conda install -c bioconda htslib
```

Continúe escribiendo *y*. 


Finalmente, instale Samtools ingresando el siguiente comando. 

```bash
conda install -c bioconda samtools
```

nuevamente proceda escribiendo *y*. 


