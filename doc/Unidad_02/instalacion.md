# Una instalación de software de muestra - Samtools 

Puedes comenzar con este [video](https://www.youtube.com/watch?v=px8lAJR0U5M) para la instalación de **MiniConda** en Ubuntu o con éste otro [video](https://www.youtube.com/watch?v=-gGxhj62KKw) dónde se instala **Anaconda**.

> La principal diferencia entre ambos es que Miniconda instala menos complementos que Anaconda, por lo cual, su descargar e instalación es más rápida y ocupando menos espacio, sin embargo, si seguiremos instalando programas con Conda lo más recomendable es instalar Anaconda de una vez.  

Siga las instrucciones a continuación para instalar Samtools a continuación. 

### SAMtools

**SAMtools** es un conjunto de utilidades para interactuar y pos-procesar alineaciones de lectura de secuencias cortas de ADN en los formatos **SAM** (alineación/mapa de secuencia), **BAM** (alineación/mapa binario) y **CRAM**. Las herramientas admiten tareas complejas, como la identificación de variantes (_variant calling_) y la visualización de alineamientos, así como la extracción de datos, la clasificación, y la conversión de índices y formatos.  

La instalación de **SAMtools** se realiza mediante un gestor de paquetes y entornos denominado **Conda**. 

<div align="center"><img src="https://user-images.githubusercontent.com/25624961/170307888-3c44ba7f-bdf3-4f8e-ae05-9d6a5a2174da.png" width="400"></div>


Éste es un código abierto y multiplataforma escrito en el lenguaje de programación **Python** que permite al usuario instalar fácilmente otros paquetes de software sin tener que instalar las dependencias manualmente. **Conda** también puede administrar proyectos que contienen código escrito en cualquier idioma y permite a los usuarios cambiar entre versiones de paquetes y descargar e instalar actualizaciones desde un repositorio de software.  

Para instalar **Samtools**, primero vaya al enlace de **instalación de Conda**: 

https://docs.conda.io/en/latest/miniconda.html para instalar el instalador de Conda para su sistema operativo, Mac, Linux o Windows.  


## Instalación de SAMtools en Ubuntu  

Abra una terminal e ingrese los siguientes comandos para actualizar el sistema y actualizar los paquetes instalados. Presione `enter` después de ingresar cada línea de código. Puede ingresar los comandos manualmente o cortarlos y pegarlos en la ventana del terminal.  

```bash
sudo apt update
```

```bash
sudo apt upgrade
```

A continuación, descargue el script de instalación de **Miniconda** o si prefiere busque en https://repo.anaconda.com/ para **Anaconda**, así como la versión que se adapte al sistema operativo que esta utlizando. Por ejemplo, en el siguiente enlace descargamos la última version de Miniconda3 para un sistema Linux x86_64, si necesita buscar otras versiones ingrese [aquí](https://repo.anaconda.com/miniconda/)

```
https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh 
```


Dirigete a tu carpeta de **Descargas** o **Downloads**. 

```bash
cd Downloads
```

Y luego ejecute el script.  

```bash
bash Miniconda3-latest-Linux-x86_64.sh
```


>**NOTA: Si por alguna razón no te permite ejecutar ese archivo, revisa si tienes los permisos (`ls -l`) y agrega el permiso si es necesario (`chmod u+x filename.sh`)**



Toque la barra espaciadora para bajar el acuerdo de licencia y para aceptar los términos escribiendo **yes**. Presiona `enter` para confirmar la ubicación de descarga. Luego escriba **yes** cuando se le solicite iniciar **Miniconda**.  

**Miniconda ya está instalada***


A continuación, instale `htslib` para acceder a la funcionalidad de la línea de comandos de Samtools. 

```bash
conda install -c bioconda htslib
```

Continúe escribiendo **y**. 


Finalmente, instale **SAMtools** ingresando el siguiente comando. 

```bash
conda install -c bioconda samtools
```

Proceda de nuevo escribiendo **y**.

-------------


## Instalación de Samtools en Mac 

Descargue el instalador de **Miniconda** para macOS desde el siguiente enlace: https://docs.conda.io/en/latest/miniconda.html  


A continuación, instale `htslib` para acceder a la funcionalidad de la línea de comandos de **SAMtools**. 

```bash
conda install -c bioconda htslib
```

Continúe escribiendo **y**. 


Finalmente, instale **SAMtools** ingresando el siguiente comando. 

```bash
conda install -c bioconda samtools
```

Nuevamente proceda escribiendo **y**. 


