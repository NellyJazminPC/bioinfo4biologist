
# ¿Qué es GitHub?

GitHub es un sitio web y un servicio en la nube que ayuda a los desarrolladores a almacenar y administrar su código, al igual que llevar un registro y control de cualquier cambio sobre este código. Para entender exactamente qué es GitHub, primero usted necesita conocer los dos principios que lo conectan:

- Control de versión
- Git

## Versión de Control

Una Versión de Control ayuda a llevar un registro y administrar cualquier cambio en el código del proyecto. A medida que crece este proyecto, la versión de control se vuelve esencial.

La versión de control permite trabajar de forma segura a través de una bifurcación y una fusión.

- Con la bifurcación, se duplica parte del código fuente (llamado repositorio). Luego, de forma segura se pueden hacer cambios a esa parte del código, sin afectar al resto del proyecto.

- Después, una vez que se logre que parte del código funcione de forma apropiada, se podría fusionar este código al código fuente principal para hacerlo oficial.

_Todos estos cambios luego son registrados y pueden ser revertidos si es necesario._


## ¿Qué Es Git?

Git es un sistema de control específico de versión de fuente abierta creada por Linus Torvalds en el 2005.

[¿Quién es Linus Torvalds?](https://www.youtube.com/watch?v=MNXIXDbEmVc)

Específicamente, Git es un sistema de control de versión distribuida, lo que quiere decir que la base del código entero y su historial se encuentran disponibles en la computadora de todo desarrollador, lo cual permite un fácil acceso a las bifurcaciones y fusiones.

[¿Qué es Open Source?](https://www.youtube.com/watch?v=a8fHgx9mE5U)


## Empezemos a trabajar con Github

![](https://github.com/NellyJazminPC/Seminarios_LBM/blob/main/GitHub/Octocat.png)


[`git`](https://git-scm.com/) es un programa que sirve para llevar el control de versiones de un proyecto informático. Puedes entenderlo como una mezcla de control de cambios de word con el sistema de versiones de documentos en Google Drive para saber qué cambios hiciste a un script, ¿por qué? y ¿cuándo?, de manera que es más fácil mantener el orden, "volver al pasado" y trabajar en paralelo con colegas.


[Github](https://github.com/) Es un repositorio de código que:

* Utiliza `git` para llevar un sistema de **control de versiones**,
* Tiene una interfase Web pública
* Permite escribir/revisar código en equipo


### Algunas recomendaciones

Es muy buena idea llevar un control de versiones de tus scrips en tu carpeta `bin`.

Sin embargo, cuando subas tu proyecto con todo y datos como un repositorio (e.g. a Dryad) recuerda **NO** compartir la carpeta `.git`.

Como introducción a `git` primero vamos a entender los principales conceptos y el [flujo de trabajo de Github leyendo esta documentación](https://guides.github.com/introduction/flow/).

Es recomendable leer [An Intro to Git and GitHub for Beginners (Tutorial) de Meghan Nelson](https://product.hubspot.com/blog/git-and-github-tutorial-for-beginners).


### Los términos más importantes

+ **Repositorio**: Se usa para organizar un proyecto. Puede contener imágenes, código, documentos, etc. Es recomendable incluir un README.

+ **Fork**: Se crea un fork cuando el repositorio es copiado de la cuenta de un miembro de Github a la de otro.

+ **Branch**: El repositorio tiene una rama o branch principal llamada `main`, que es la "original". Se pueden crear otras ramas dentro del mismo repositorio en las cuales se pueden hacer modificaciones sin afectar el código original. Es el equivalente tener un archivo original `Tesis` y ponerle `Tesis_comentariosAsesora1` y `Tesis_comentariosAsesor2` a los archivos con los comentarios de tus asesores, mismos que eventualmente volverás a integrar en un archivo final (pero `git` lo hace todo más organizado).

+ **Commit**: Equivale a guardar los cambios **en git** que no es lo mismo que en el archivo. CUIDADO Los cambios se guardan en la branch donde trabajas. Puedes acompañar el commit de un mensaje corto para especificar qué cambios hiciste. Esto es mucho mejor que tener nombres de archivos larguísimos tratando de explicar qué versión son (e.g. `Tesis_final_comentariosAMY_DP_rev22oct2020_comentariosFran_revEnero2020_FINAL_BUENO_corrected_2.doc`).

+ **push:** para enviar los commits locales al repo online.

Piensa en `push` para enviar y `pull` para recibir.

+ **Pull request**: Si se quieren agregar las modificaciones en la branch `master` o `main`, se envía una solicitud al propietario original. Es decir tú no haces `push`, le pides al propietario que haga `pull`.

+ **Merge**: Una vez que el propietario del repositorio ha revisado y aceptado los cambios, fusiona las ramas.



## Github Desktop (Windows y MacOS)

https://desktop.github.com/

Guía https://docs.github.com/es/free-pro-team@latest/desktop/installing-and-configuring-github-desktop/installing-github-desktop

![](2020-11-09%20(3).png)

![](2020-11-09%20(4).png)
![](2020-11-09%20(6).png)
![](2020-11-09%20(8).png)
![](2020-11-09%20(9).png)

![](2020-11-09%20(10).png)

## Terminamos la instalación y ahora comenzamos a explorar GitHub Desktop
![](2020-11-09%20(11).png)


![](2020-11-09%20(12).png)

### Vamos a File y observamos la lista de acciones que se desglosa, entre ellas vamos a Options
![](2020-11-09%20(14).png)

**Podemos cambiar la apariencia**
![](2020-11-09%20(15).png)

## Intenta crear un nuevo repositorio
![](2020-11-09%20(16).png)


### Observa las opciones que aparecen
![](2020-11-09%20(17).png)

### Para sincronizar este repositorio local con tu cuenta GitHub en la nube vamos a publicar **Publish**
![](2020-11-09%20(18).png)
![](2020-11-09%20(19).png)
![](2020-11-09%20(20).png)

### Ve a tu cuenta y actualiza la página, debe aparecer un nuevo repositorio, el que acabas de publicar
![](2020-11-09%20(21).png)
![](2020-11-09%20(22).png)

### Por ahora tu repositorio esta vacio, si tienes algún archivo que quieras incorporar puedes copiar y pegar o mover ese archivo a tu directorio local donde esta el repositorio que creaste
![](2020-11-09%20(24).png)
![](2020-11-09%20(25).png)
![](2020-11-09%20(26).png)
![](2020-11-09%20(27).png)

### Para poder sincronizar los cambios debes agregar un comentario en **Commit to main**
![](2020-11-09%20(29).png)

### Después, vas a Repository y das click en **Push**
![](2020-11-09%20(31).png)

### Ahora ve a tu cuenta en la nube y comprueba que los cambios se hayan sincronizado
![](2020-11-09%20(35).png)
![](2020-11-09%20(36).png)


### Documentación extra


* [Learn Git Branching](https://learngitbranching.js.org/) para saber más acerca de las ramas y como manejarlas.


* [A successful Git branching model de VincentDriessen](http://nvie.com/posts/a-successful-git-branching-model/).


+ Lo primero que hay que hacer es este tutorial: [Hello-world Github Guide](https://guides.github.com/activities/hello-world/) para aprender a crear un repo en Github y utilizar su versión web.

+ Realiza este tutorial de git [https://learngitbranching.js.org/](https://learngitbranching.js.org/).

+ Lee la [documentación de `pull request` en Github](https://help.github.com/en/articles/about-pull-requests).

### Un editor de texto recomendado por GitHub para Windows o MacOS
![](2020-11-09%20(37).png)
![](2020-11-09%20(39).png)
