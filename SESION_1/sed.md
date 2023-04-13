# Sustituciones usando `sed`  


Reemplazar una cadena de texto por otra es algo que a menudo necesitamos hacer. 

Esto podría deberse a que descubrimos un error tipográfico repetido o un error ortográfico en un archivo o porque decidimos que una parte del texto debe reemplazarse con algo que se lea mejor. Por supuesto, podríamos hacer esto **manualmente**, revisando un archivo, corrigiendo cada aparición de un error. Sin embargo, esto **requiere mucho tiempo y es propenso a errores humanos**.  

Linux incluye un comando llamado **`sed`** que nos permite realizar tales **sustituciones automáticamente**.  

El nombre `sed` es una abreviatura de **stream editor**.  

El comando se ejecuta de la siguiente manera: 

```bash
sed 's/oldtext/newtext/' file.txt
```

Esto reemplazará la cadena **`oldtext`** con **`newtext`**, tomando la entrada del archivo `file.txt` y de forma predeterminada, escribirá el resultado en la salida destacada, que es su terminal.  

----------

**Para reemplazar** la escritura en un **archivo** nuevo, use una redirección (**`>`**):  

```bash
sed 's/oldtext/newtext/' file.txt > newfile.txt
```

En su lugar, esto generará un archivo llamado `newfile.txt`.  

-----------------------

Para realizar cambios en el archivo de entrada, utilice la opción **-i**: 

```bash
sed -i  's/oldtext/newtext/' file.txt
```

**CUIDADO:** Solo hagalo cuando esté absolutamente seguro de que la sustitución que está haciendo es correcta. De manera predeterminada, `sed` reemplazará todas las instancias de la cadena de texto anterior con la nueva cadena de texto. 


<div align="center"><img src="https://user-images.githubusercontent.com/25624961/169902741-7f54a2dd-8851-4ed3-baf9-e7c0043b5965.png" width="400"></div>


### Otras opciones con `sed`  

<div align="center"><img src="https://user-images.githubusercontent.com/25624961/169901777-908628f3-0ec9-453e-b230-b6a062a29534.png" width="600"></div>

