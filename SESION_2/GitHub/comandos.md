### Configurando nuestro git local con Github (Linux y MacOS)

Para poder vincular tu `git` con tu cuenta de Github necesitas **asociar tu dirección de correo electrónico principal de Github con tu git local**. Además puedes cambiar tu nombre de usuario, pero lo que realmente te vincula con Github es tu correo.

Para cambiar tu correo necesitas seguir cualquiera de estos dos métodos:

1) Correr `$ git config --global --edit`

Lo cual abrirá una pantalla de `vim`. Edita tu nombre de usuario y cuenta de correo. Para poder "escribir en vim" presiona `I` (de insertar) donde quieras comenzar a escribir. Recuerda, para guardar y salir, tecla Esc y luego `:wq`.

2) Compilar las siguientes lineas de código:

`$ git config --global user.email "email@example.com"`

`$ git config --global user.name "Mi_nombre"`

Donde el texto entre comillas son tus datos.

Comprueba que tu dirección es la correcta con:

`$ git config user.email`

Debe mostrarse tu dirección correcta.


[Referencia de lo anterior](https://help.github.com/articles/setting-your-commit-email-address-in-git/)


### Ejemplo: crear un repo

#### `git init`
Te permite crear un repo desde tu disco local. En la terminal escribe:

```
$ mkdir repo_name # crear un directorio en tu disco local
$ cd repo_name
$ git init # transformar ese directorio en un repositorio git
$ git status # verificar que el repositorio ha sido creado
```

Para conectar ese nuevo repostorio a github:
+ Log in en tu cuenta de github
+ En 'Repositories' click en el boton verde 'NEW"
+ Dale el mismo nombre que tu repostorio local y click en el botom 'Create repository'
+ Vuelves al terminal para conectar tu repo local con el repo en github, usando:

```
$ git remote add origin https://github.com/<username>/<repo_name>.git
$ git push -u origin main
```

### Ejemplo: clonar un repo.

#### `git clone`
Te permite copiar un repositorio que ya existe. Cada versión de cada archivo de la historia del proyecto es descargado cuando lo ejecutas. La dirección del repo que quieres clonar puedes conseguirla en el botón verde que dice "Clone or Download" en la página principal del repo en Github.

**CUIDADO dónde corres `git clone` (tu working directory será el lugar a donde "se baje" el repositorio que estás clonando)**

```
$ git clone https://github.com/NellyJazminPC/Choco
Cloning into 'Choco'...
remote: Counting objects: 3, done.
remote: Compressing objects: 100% (2/2), done.
Unpacking objects: 100% (3/3), done.
remote: Total 3 (delta 0), reused 0 (delta 0), pack-reused 0

```

Para poder hacer los siguientes comandos debemos estar en el directorio del repo. Es decir lo que acabamos de bajar. Así que `cd Choco`.

#### `git status`
Es para saber en qué branch estas trabajando y si tienes archivos que te falte "guardar" (commit). Por ejemplo, si lo haces cuando acabas de clonar un repositorio, debe verse algo así:

```
$ git status                           []
On branch main
Your branch is up-to-date with 'origin/main'.
nothing to commit, working tree clean
```

#### `git add`
Te permite agregar un archivo que no existía en el repositorio o prepara las modificaciones a archivos existentes. Esto no lo "guarda" (commit), solo hace que "lo sigas". Si modificas un archivo es necesario que vuelvas a dar `add`.

```
$ touch ejemplo.txt
$ git status
On branch main
Your branch is up-to-date with 'origin/main'.
Untracked files:
  (use "git add <file>..." to include in what will be committed)

	ejemplo.txt

nothing added to commit but untracked files present (use "git add" to track)
$ git add ejemplo.txt
```


#### `git commit`
Confirma y agrega los cambios a la branch en la que estas trabajando. Utiliza la flag `-m` para escribirun mensaje breve. Si no lo haces se abrirá un editor de texto donde puedes describir brevemente el cambio que hiciste. Si tu editor es Vim, puedes guardar y salir con `:wq`.

```
$ git commit -m "agregar archivo ejemplo"
[main 79fce15] agregar archivo ejemplo
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 ejemplo.txt
```

#### `git diff`
Para ver los cambios que se hicieron a un archivo.

```
$ echo "el mundo es bello" > ejemplo.txt
$ cat ejemplo.txt
el mundo es bello
$ git status
On branch main
Your branch is up-to-date with 'origin/main'.
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

	modified:   ejemplo.txt

no changes added to commit (use "git add" and/or "git commit -a")
$ git diff ejemplo.txt
diff --git a/ejemplo.txt b/ejemplo.txt
index 8d269c1..0dc4fee 100644
--- a/ejemplo.txt
+++ b/ejemplo.txt
@@ -1 +1 @@
-bla bla bla
+el mundo es bello
```



#### `git rm`
Si quieres borrar un archivo **que ya había formado parte de un commit** no sólo de tu compu sino del sistema de versiones de git, lo mejor es NO utilizar `rm`, sino `git rm`. Ejemplo:

```
$ touch ejemplo2.txt
$ git add ejemplo2.txt
$ git status
On branch main
Your branch is ahead of 'origin/main' by 1 commit.
  (use "git push" to publish your local commits)
Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

	new file:   ejemplo2.txt
$ git add ejemplo2.txt
$ git commit -m added ejemplo2
$ git rm ejemplo2.txt
$ git status
On branch main
Your branch is ahead of 'origin/main' by 2 commits.
  (use "git push" to publish your local commits)
Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

	deleted:    ejemplo2.txt

```

#### `git push`

Una vez que quieres integrar tus cambios a una rama, este comando te permite fusionar ramas. Debes decirle el origen (rama donde hiciste los commits) y el destino (por ejemplo main u otra rama).

**CUIDADO** no podrán hacer `push` porque no son propietarios de este repo. Para ello deberían hacer primero un `pull request`.

```
$ git push origin main
Counting objects: 3, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 285 bytes | 0 bytes/s, done.
Total 3 (delta 0), reused 0 (delta 0)
To https://github.com/NellyJazminPC/Choco
   72129b3..79fce15  main -> main
```

Nota: puedes agregar la flag `-u` para establecer `origin main` (o lo que sea) como el default y solo tener que hacer `git push` en un futuro.


#### `git pull`
Actualiza la copia del repositorio local con respecto a la rama remota. Es decir


```
$ git pull                             []
Already up-to-date.
```


#### `git fetch`

Si vas a trabajar con repos de otras personas problablemente no quieras hacer un `merge` en automático (que es lo que hace `pull` tras bambalinas) con tu repo local, sino que solo quieras jalar los cambios que hayan hecho otros. Por ejemplo los archivos que agregue a este repo sin que borre lo que tu hayas hecho en tu versión. [Para evitar posibles problemas asociados a esto se recomienda usar `fetch`]((https://help.github.com/articles/fetching-a-remote/)).

[Diferencias entre fetch y pull](https://longair.net/blog/2009/04/16/git-fetch-and-merge/)


#### `git log`

Para ver el historial de commits que se han hecho en el repo. Por default te mostrará los commits en orden cronológico invertido, pero hay muchas opciones que puedes darle para buscar algo más específico. [Instrucciones aquí](https://git-scm.com/book/en/v2/Git-Basics-Viewing-the-Commit-History).


**Ejercicio:** clona el repositorio de Seminarios_LBM


#### `git` ACCIONES ESENCIALES QUE NO HAY QUE OLVIDAR

0) `git pull` para jalar los cambios de una rama en Github a nuestra rama local (en la compu).

1) `git status` dentro del directorio de tu repo para ver si hay cambios.

2) `git diff nombrearchivo` para ver las modificaciones que se hicieron a un archivo desde el último commit.

3) `git add nombrearchivo` (para un archivo) o `git add *` o `git add .` (para todos los archivos) para agregar los archivos **que queremos incluir en un commit**. Como el equivalente a "adjuntarlos" en un correo que te enviarías por correo.

4) `git commit -m "mensaje corto explicando qué contiene el commit"`. Como el contenido de un correo donde te explicarías a tí mismo qué cambios hiciste que ameritan guardar la versión ("commit").

5) `git push` para enviar nuestros cambios locales a Github.



#### ¿Cómo volver al pasado?

Hay muchas formas. [Esta respuesta de Stacksoverflow es una buena guía](https://stackoverflow.com/questions/4114095/how-to-revert-a-git-repository-to-a-previous-commit).



### Recomendación: ignorar archivos que no queremos que git siga**

Algunos archivos no queremos que sean considerados por `git`, por ejemplo archivos que la compu hace en automático como los "fantasmitas de Mac" o archivos de datos muy pesados si queremos solo publicar el código. Podemos entonces decirle a git cuáles archivos ignorar. Pasos:

1) Crear un archivo `.gitignore` en el working directory de tu repositorio (donde vive tu `.git` que se creó con `git init` o con `git clone`).

`touch .gitignore` (nota el punto `.`)

2) En ese archivo poner el nombre (o las extensiones) de los archivos que quieres ignorar. [Aquí puedes ver una lista de casos comunes proporcionada por Github](https://gist.github.com/octocat/9257657).

Por ejemplo para un repositorio en MacOS:


`$ vim .gitignore` o `$ nano .gitignore`

Y en el editor se escribe lo siguiente:

```
# OS generated files #
######################
.DS_Store
.DS_Store?
._*
.Spotlight-V100
.Trashes
ehthumbs.db
Thumbs.db

```

3) Si haces un `git status` notarás que aparece `.gitignore` como untracked. Entonces debes:

```
$ git add .gitignore
$ git commit -m "Added .gitignore file to repo"
$ git push
```

También puedes crear un `.gitignore` global que aplique en todos los repos de tu compu. Instrucciones [aquí](https://help.github.com/articles/ignoring-files/)
