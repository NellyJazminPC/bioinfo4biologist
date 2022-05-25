# Introducción a las variables de entorno (Environment variables) 

En los sistemas operativos de computadora, un entorno (environment) es un área que contiene información sobre el comportamiento de programas y aplicaciones.  

Las variables de entorno de Linux son utilizadas por las aplicaciones para obtener información sobre el entorno, y cada variable de entorno es una variable con un nombre y un valor asociado.  

Cada vez que se configura el entorno, se crea una nueva sesión de shell, y esto se puede usar como una experiencia de aprendizaje 
para ver cómo cambiar las variables del entorno de Linux puede cambiar cosas como la apariencia del shell, 
crear rutas a archivos ejecutables, configuraciones de diseño de teclado y definiendo el directorio de inicio predeterminado, 
por ejemplo.

Las variables tienen el siguiente formato y, por convención, tienen nombres en mayúsculas.  

Aunque distinguen entre mayúsculas y minúsculas, es posible tener nombres en minúsculas.  

Además, no hay espacio alrededor del símbolo igual =  


**KEY=value KEY=”Another value”** 

**CLAVE=valor CLAVE=”Otro valor”**  

Si asigna varios valores a una variable, sepárelos con el caractér de dos puntos : 

**KEY=value1:value2** 

**CLAVE=valor1:valor2** 


### Hay dos tipos de variables: 


Las **variables de entorno** (Environment variables) abarcan todo el sistema y son heredadas por todos los procesos y shells del sistema. 


<div align="center"><img src="https://user-images.githubusercontent.com/25624961/170337787-6598ef36-bb66-4ec6-b899-7556f99e87d0.png" width="600"></div>



Las **variables de shell** solo se aplican internamente a la instancia de shell actual. 


### ¿Cómo usamos los comandos de Linux para enumerar y establecer variables de entorno? 


Esto se puede lograr usando los siguientes comandos.

**env –** esto le permite ejecutar otro programa en un entorno personalizado sin modificar el actual. 
Cuando se usa sin un argumento, imprimirá una lista de las variables de entorno actuales.

**printenv –** imprime todas las variables de entorno especificadas.

Por ejemplo, para mostrar el valor de la variable de entorno HOME escriba:

```bash
printenv HOME
```

Esto imprimirá la ruta del usuario actualmente conectado. 

```bash
/home/manager
```


También puede pasar más de un argumento al comando `printenv`, en la forma:

```bash
printenv <argument1><argument 2>
```

## Prueba este ejemplo  

```bash
printenv LANG PWD
```

Esto producirá una salida similar a esta. 

```bash
en_GB.UTF-8
```

Ejecutar `printenv` sin ningún argumento mostrará una lista de todas las variables de entorno.

```bash
printenv
```

Esto producirá una salida extensa similar a la truncada a continuación. 

```bash

CLUTTER_IM_MODULE=xim
LS_COLORS=rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.zst=01;31:*.tzst=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.wim=01;31:*.swm=01;31:*.dwm=01;31:*.esd=01;31:*.jpg=01;35:*.jpeg=01;35:*.mjpg=01;35:*.mjpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.opus=00;36:*.spx=00;36:*.xspf=00;36:
LESSCLOSE=/usr/bin/lesspipe %s %s
XDG_MENU_PREFIX=gnome-
LANG=en_GB.UTF-8
DISPLAY=:0
GNOME_SHELL_SESSION_MODE=ubuntu
COLORTERM=truecolor
USERNAME=manager
XDG_VTNR=1
SSH_AUTH_SOCK=/run/user/1000/keyring/ssh
XDG_SESSION_ID=1
USER=manager
DESKTOP_SESSION=ubuntu
QT4_IM_MODULE=xim
TEXTDOMAINDIR=/usr/share/locale/
GNOME_TERMINAL_SCREEN=/org/gnome/Terminal/screen/f05913a2_61f0_4166_8fd7_9a75b1b624d0……..
```

Algunas de las variables de entorno más comunes se destacan a continuación. 

| Comando           |  Descripción            |
| --------- | ------------ |
| printenv USER | Usuario conectado actual|
| Printenv HOME | Directorio de inicio del usuario actual|
| Printenv EDITOR | El editor por defecto|
| SHELL | La ruta del shell del usuario actual|
| LOGNAME | El nombre del usuario actual |
| PATH | Una lista de directorios para buscar al ejecutar comandos |
| LANG | La configuración local actual|
| TERM | La emulación de terminal actual|
| MAIL | Ubicación donde se almacena el correo del usuario|

 

**set –** Esto establece o desarma las variables de shell. Si se usa sin un argumento, imprimirá una lista de todas las variables, tanto de shell como de entorno, y funciones de shell.  

Escriba `set` en una terminal y producirá una larga lista de todas las variables.
 
```bash
BASH=/bin/bash
BASHOPTS=checkwinsize:cmdhist:complete_fullquote:expand_aliases:extglob:extquote:force_fignore:histappend:interactive_comments:progcomp:promptvars:sourcepath
BASH_ALIASES=()
BASH_ARGC=()
BASH_ARGV=()
BASH_CMDS=()
BASH_COMPLETION_VERSINFO=([0]="2" [1]="8")
BASH_LINENO=()
BASH_SOURCE=()
BASH_VERSINFO=([0]="4" [1]="4" [2]="20" [3]="1" [4]="release" [5]="x86_64-pc-linux-gnu")
BASH_VERSION='4.4.20(1)-release'
CLUTTER_IM_MODULE=xim
COLORTERM=truecolor
COLUMNS=80
DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus
DESKTOP_SESSION=ubuntu
DIRSTACK=()
DISPLAY=:0
EUID=1000
GDMSESSION=ubuntu………
```

**unset –**  esto elimina las variables de shell y de entorno.  

**export –** este comando establece las variables de entorno. 

## Ejemplos:

A continuación se muestran algunos ejemplos que destacan la diferencia entre las **variables de entorno y de shell**. 

Primero crearemos una variable Shell y luego la transformaremos en una variable de entorno. 

Cree una nueva variable llamada **MY_VARIABLE** y proporcione un valor de **Linux_Variable**. 

```bash
MY_VARIABLE=’Linux_Variable’
```

Verifique que la variable existe escribiendo: 

```bash
echo $MY_VARIABLE
```

Esto mostrará:  


```bash
Linux_Variable
```

Use el comando `printenv` para verificar si **MY_VARIABLE** es una variable de entorno o no.  

Si la salida está vacía, entonces no es una variable de entorno.  

```bash
printenv MY_VARIABLE
```

Esto no mostrará ninguna salida.  



Ahora que tenemos nuestra **variable Shell**, podemos transformarla en una **variable de entorno** escribiendo: 

```bash
export MY_VARIABLE
```

Comprueba que **MY_VARIABLE** existe escribiendo  


```bash
printenv MI_VARIABLE
```

Esta vez, la variable ahora se mostrará como una variable de entorno: **Linux_Variable**  



Tenga en cuenta que las variables creadas de esta manera solo estarán disponibles en la sesión actual y se perderán cuando cierre la sesión o abra un nuevo shell.  


Para que las variables de entorno sean persistentes, deberá agregarlas a archivos específicos de Linux. 


Edite el siguiente archivo con el editor nano.  


```bash
nano /etc/environment
```

Agregue **MY_VARIABLE=value** a una nueva línea y guarde. Defina su valor en consecuencia.  

Esto podría ser texto o un número, por ejemplo.

Otro método útil, si está utilizando Bash, es declarar su variable en el archivo de perfil oculto `.bashrc`.

```bash
nano ~/.bashrc
```

Agregue una nueva línea al archivo `.bashrc`  


**exportar MYVARIABLE=” value”**  


Guarde y actualice los cambios en el archivo .bashrc escribiendo  


```bash
source ~/.bashrc
```


> Tenga en cuenta que modificar el archivo de perfil de `bashrc` puede tener efectos desastrosos en su sistema si no sabe lo que está haciendo y puede resultar en que no pueda iniciar sesión. 
> La manipulación más avanzada del script bashrc está más allá del alcance de esta introducción, pero si está interesado en leer más, consulte el siguiente enlace. 

https://cloudzy.com/knowledge-base/what-is-linux-bashrc-and-how-to-use-it-full-guide/ 








