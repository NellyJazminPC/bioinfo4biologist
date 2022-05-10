# Week 3: Plotting in R for biological scenarios  
## 1. Introduction to week 3  
### Art to Empower Data 
Some links to websites  
- https://informationisbeautiful.net/
- https://www.visualisingdata.com/

## 2. Introduction to R    
### How to Install R and RStudio  
**Instructions for Mac Users:**   
1. Open your internet browser and go to https://www.r-project.org/   
2. In the Getting Started section, follow the download R link available    
3. You will be redirected to a webpage asking you to choose your preferred CRAN (Comprehensive R Archive Network) mirror. You will have to choose the closest mirror to your current location     
4. Follow the Download R for mac OS link available     
5. Select the link containing the R version that is most suited to your Mac OS Version in order to download it (.pkg file)   
6. Open the file and follow the recommended instructions for installation    
7. To check whether the installation was successful: Open your Terminal, simply write R, and the available R version will be displayed to you automatically 
8. You might also need to install XQuartz if it is not part of your Mac OS Version. Please read carefully the available instructions (in this same webpage or consult the https://www.xquartz.org/ website) on how to install it. Select the link containing the XQuartz version that is most suited to your Mac OS Version in order to download it (.dmg file), then open the file and follow the recommended instructions for installation.

**Instructions for Linux Users**  

1. Open your internet browser to go to https://www.r-project.org/ 
2. In the Getting Started section, follow the download R link
3. You will be redirected to a webpage asking you to choose your preferred CRAN(Comprehensive R Archive Network) mirror. You will have to select the closest mirror to your current location
4. Click on the Download R for Linux link
5. Select your Linux OS system
6. Follow carefully the installation instructions
7. Example for Ubuntu
1. Open your internet browser to go to https://www.r-project.org/ 
```bash
# To install the complete R system, use:
sudo apt-get update
sudo apt-get install r-base 
```
Users who need to compile R packages from source [e.g. package maintainers, or anyone installing packages with install.packages()] should also install the r-base-dev package:
```bash
sudo apt-get install r-base-dev
```
8. To check whether the installation was successful:

- Open your Terminal
- write R
- the available R version will be displayed to you automatically

**Instructions for Windows Users**  

1. Open your internet browser and go to https://www.r-project.org/
2. In the Getting Started section, follow the download R link
3. You will be redirected to a webpage asking you to choose your preferred CRAN (Comprehensive R Archive Network) mirror. You will have to select the closest mirror to your current location
4. Click on the Download R for Windows link
5. Click on the install R for the first time link
6. This will open the following webpage in R CRAN
7. You can directly click on Download R 4.1.1 for Windows
8. If you need more information on how to open and use R under windows, please click on the Installation and other instructions link (immediately under the first link) and read carefully the recommendations given to you.

**How to install RStudio - Instructions for Mac, Linux and Windows Users**  

1. Open your internet browser and go to https://www.rstudio.com
2. Select the Products tab and go to RStudio R studio
3. Alternatively, you can go directly to https://www.rstudio.com/products/rstudio/
4. Click on the RStudio Desktop link which will redirect you down the same page to the Download RStudio Desktop blue button which is part of the Open Source Edition
5. Download the most suited RStudio Desktop to your OS (Mac, Linux or Windows) installer RStudio screen
6. Open the file and follow the recommended instructions for installation

### Let’s Begin with R! 
**What is R?**  

R is a “language and environment for statistical computing and graphics”. R is an integrated suite of facilities for data manipulation, calculation and graphical display. Among other things it has: 
- an effective data handling and storage facility
- a suite of operators for calculations on arrays
- a large, coherent, integrated collection of intermediate tools for data analysis
- graphical facilities for data analysis and display either directly at the computer or on hard-copy

R is very much a vehicle for newly developing methods of interactive data analysis. It has developed rapidly, and has been extended by a large collection of packages. (Please note that these are official definitions taken from https://www.r-project.org/ and http://mercury.webster.edu/aleshunas/R_learning_infrastructure/Introduction_to_R_and_RStudio.html). 


**How to work under R** 

**Step 1.** In your bash window, create a new working subdirectory (we recommend you to use separate working directories for analyses conducted with R, here under Desktop), and move to it 

```bash
$ cd Desktop
$ mkdir exerciseR 
$ cd exerciseR
```
**Step 2.** Start the R program by simply typing R  
```bash
$ R
```
This command will open the R environment for you, and a new prompt will appear: “>” 

**Step 3.** To work under R, write any command following the “>” prompt as in Unix  
```
>  
```
Example of basic operations in R: 
```R
> x = 3
> y = 2
> x + y
[1] 5
```
**Step 4.** R being created for statistical purposes, it has very helpful built-in functions  
```R
> sqrt(3 * 4 + 2 * 5 + 3)
[1] 5
> log(5) + log(10)
[1] 3.912023
> log(50) 
[1] 3.912023
> sum(3 * 4 + 2 * 5 + 3)
[1] 25
```
Where sqrt=square root, … 
 
**Step 5.** When working under your current R session, the entities (variables, functions, etc…) that R (you) creates and uses are called “objects”. To display the names of the objects, there are 2 options:  

```R
> objects() 
> ls()
```
**Step 6.** As in Unix, to remove the 2 “objects” we previously created (Step 3) named x and y, you can use rm  
```R
> rm(x, y) 
```
**Step 7.** To quit R 
```R
> q()
```
You will be asked whether you want to save your workspace image 

```R
> q()
Save workspace image? [y/n/c]:
```
Where y=yes (save data and quit), n=no (quit without saving data) and c=cancel (abort the request and continue working under the current R session). If you choose “y”, your objects will be saved in a “.RData” file, and the command lines in a “.Rhistory” file  


**Important things to know when you work under R**  
**Note 1.** As in Unix (man), obtaining help for functions is possible in R (help or ?). Example to obtain information on a command called sum
```R
>  help(sum)
> ?sum
```
To close this subsection type “q” 

**Note 2.** A “+” symbol might appear when you try to execute a command
```R
+  
```
This means R is expecting you to complete your command  

**Note 3.** As Unix, R is case sensitive  
```R
> help(sum)
> HELP(sum) 
```
The first command will work, the second will output Error in HELP(sum): impossible to find the function “HELP”  

**Note 4.** As for Unix, you can use the upwards arrow on your keyboard (↑) to go back to the previous command you used.  

**Note 5.** A very detailed introduction on how to use R can be found in https://cran.r-project.org/doc/manuals/r-release/R-intro.html  

### Check Your Learning so Far  
1. Which statement is false:  
- R is a programming language
- R can be used for statistical purposes
- R can be used for graphical display of data
- *R can be used as a text editor*

2. Which statements are true (there might be more than one):
- *The help command is an in-built facility in R*
- Alternatively, we can use HELP instead of help
- The help command can be used as the pwd command in Unix
- *Alternatively, we can use “?” instead of help*

3. What are the objects created in R?
- The objects are built-in functions in R
- *The objects are entities you can remove from R*
- *The objects are entities where you can store data (numbers…)*

## 3. Working with data structures in R 
### How to Create and Manipulate Variables and Vectors in R  
**Variables and Vectors in R** 

When working under your current R session, the entities that R creates and uses are called “objects”. 

There is a wide range of objects that can be created and that can contain variables, arrays of numbers, character strings, functions…. 

They can be classified into different types: Vectors, Lists, Data frames, Matrices, Factors, or Functions. In this course we will show you how to create and manipulate Vectors, Lists, and Data frames. For the sake of time and course content we will not cover the rest of the object types, but we encourage you to find more information on these in the following link: https://cran.r-project.org/doc/manuals/r-release/R-intro.html Let’s see together how Variables and Vectors can be created and manipulated. 

**What is a Variable and what is a Vector** 

**_Definition of a variable_** 

Variables are objects in R that you can use to store values. It can consist of a single value, basic or complex arithmetic operations, or even be more complex such as a column in a data matrix or a data frame. We will see these complex forms in the following steps of this course. 
 
**_Definition of a vector_** 

A vector is substantially a list of variables, and the simplest data structure in R. A vector consists of a collection of numbers, arithmetic expressions, logical values or character strings for example. However, each vector must have all components of the same mode, that are called numeric, logical, character, complex, raw. 

**How to create and manipulate Variables** 

**Step 1.** We recommend you to work in the same working sub-directory that you created previously (in Step 3.4 of the course) for analyses conducted with R. If the sub-directory is not created yet or mistakenly removed, please do it again, and launch R 

```bash
$ mkdir exerciseR 
$ cd exerciseR
$ R
```
**Step 2.** If you forgot before launching R, there is another option you can use to make sure to set the correct working directory using the “setwd()” command, and then check your position using the “getwd()” command (this will also be helpful in RStudio). You can use “getwd()” in R as you used “pwd” in Unix 

Launch R
```bash
$ R
```
Go to your working directory 
```R
> setwd("/Users/imac/Desktop/exerciseR")
> getwd()
[1] "/Users/imac/Desktop/exerciseR"
```
**Step 3.** Let’s create a simple variable called x. We need to assign elements to this variable. The assignment to a variable can be done in 2 different but equivalent ways, using either the “<-“ or “=” operators. You can retrieve the value of x simply by typing x 

```R
> x <- 3 * 4 + 2 * 5 + 3
> x = 3 * 4 + 2 * 5 + 3
> x
[1] 25
```
**Step 4.** Let’s create another variable called y that can either contain a new value or for example contain a basic or more complex operation on the first variable x 

```R
> y <- x^4 - 4*x + 5
> y
[1] 390530
```
**Note 1.** Naming a Variable is not trivial and must be done appropriately:  
- Variable names can contain letters, numbers, underscores and periods
- Variable names cannot start with a number or an underscore
- Variable names cannot contain spaces at all 

```R
> x.length <- 3*2
> x.length
[1] 6
> _x.length <- 3*2
Error : unexpected input in "_"
> 3x.length <- 3*2
Error : unexpected symbol in "3x.length"
```

**Note 2.** Long Variable names are allowed but must be formatted using: 

- Periods to separate words: x.y.z
- Underscores to separate words: x_y_z
- Camel Case to separate words: XxYyZz

```R
> x.length <- 3*2
> x.length
[1] 6
> x_length <- 3*2
> x_length
[1] 6
> xLength <- 3*2
> xLength
[1] 6
```

**How to create and manipulate Vectors** 

**Step 1.** A vector can be created using an in-built function in R called c(). Elements must be comma-separated. 

```R
> c(10, 20, 30)
[1] 10 20 30
```

**Step 2.** A vector can be of different modes: numeric (and arithmetic), logical, or can consist of characters 

```R
> c(1.1, 2.2, 3.5)     			# numeric
[1] 1.1 2.2 3.5
>
> c(FALSE, TRUE, FALSE)		# logical
[1] FALSE TRUE FALSE
>
> c("Darth Vader", "Luke Skywalker", "Han Solo")		# character
[1] "Darth Vader"   "Luke Skywalker"   "Han Solo"
```

**Note.** Please note that when the value is a character data type, quotations must be used around each value, such as in “Han Solo” 

**Step 3.** A vector can be assigned to a variable name, using 3 methods: either using the “<-“ or “=” operators or the assign function. You will very rarely see the last method which is to revert the order of assignment 

```R
> assign("x", c(10, 20, 30))
> x
[1] 10 20 30
>
> x <- c(10, 20, 30)
> x
[1] 10 20 30
>
> x = c(10, 20, 30)
> x
[1] 10 20 30
>
> c(10, 20, 30)  ->  x
> x
[1] 10 20 30
```

**Step 4.** In R, an object must be defined by properties of its fundamental components, such as the mode, that can be retrieved by the function “mode()” and the length by the function “length()”. An empty vector can be created and may still have a mode 

```R
> v <- numeric()
> w <- character()
> mode(x)
[1] "numeric"
> mode(v)
[1] "numeric"
> mode(w)
[1] "character"
> 
> length(x)
[1] 3
```

**Step 5.** Basic operations with numeric vectors 

```R
> x <- c(10, 20, 30)
> x
[1] 10 20 30
> 1/x
[1] 0.10000000 0.05000000 0.03333333
```

**Step 6.** A vector can be used in arithmetic expressions and/or as a combination of existing vectors 
```R
> x <- c(10, 20, 30)
> y <- x*3+4
> y
[1] 34 64 94
> z <- c(x, 0, 0, 0, x)
> z
[1] 10 20 30  0  0  0 10 20 30
> w <- 2*x + y + z
> w
[1]  64 124 184  54 104 154  64 124 184
```

Note how the addition is sequential in this last case (value 1 of x is multiplied by 2, then added to value 1 of y then added to value 1 of z, etc…) 

**Step 7.** A vector can use built-in functions in R, such as mean() to calculate the mean of a certain object (here x), var() to calculate its variance, and sort() to sort the content here of object z. 

```R
> mean(x)
[1] 20
> var(x)
[1] 100
> sort(z)
[1]  0  0  0 10 10 20 20 30 30
```

**Step 8.** R uses built-in functions and operators to generate regular sequences. Here are examples of how to use rep() to repeat items (arguments needed are the value to repeat and the number of repeats) and seq() (arguments needed are the start, the end, and the interval) to create a sequence of items. 

```R
> a <- c(1:10)
> a
 [1]  1  2  3  4  5  6  7  8  9 10
> b <- rep(a, times=2)
> b
 [1]  1  2  3  4  5  6  7  8  9 10  1  2  3  4  5  6  7  8  9 10
> b <- rep(a, each=2)
> b
 [1]  1  1  2  2  3  3  4  4  5  5  6  6  7  7  8  8  9  9 10 10
> c <- seq(-2, 2, by=.5)
> c
[1] -2.0 -1.5 -1.0 -0.5  0.0  0.5  1.0  1.5  2.0
```

**Step 9.** The content of a vector can be compared to another using basic operators 

```R
> x==x
[1] TRUE TRUE TRUE
> x==y
[1] FALSE FALSE FALSE
> x!=y
[1] TRUE TRUE TRUE
```

**Step 10.** The content of a Vector can be easily queried and modified. For this it is possible to use Index Vectors to subset some elements of an existing vector, using square brackets 

```R
> x
[1] 10 20 30
> x[3]
[1] 30
> x[3] <- 50
> x
[1] 10 20 50
> length(x)
[1] 3
```

**Step 11.** For Index Vectors of character strings, a “names” attribute can help identify components and query the data. 

```R
> dairy <- c(10, 20, 1, 40)
> names(dairy) <- c("milk", "butter", "cream", "yogurt")
> breakfast <- dairy[c("milk","yogurt")]
> breakfast
  milk yogurt 
    10     40
```
This might be useful to remember when you will manipulate data frames. 

**Exercise:** 

1. Could you create 3 vectors: 

- a vector x containing the numbers 3, 10 and 30

- a vector m containing the content of x repeated twice

- a vector n containing two copies of x separated by a 0

2. Is the content of m equal to the content of n?

3. Note that you should also obtain a warning message because the 2 vectors are not of the same length. How can you check the length of both vectors? 

**Solution:**
```R
# SOLUTION 1.
> x <- c(3, 10, 30)
> m <- rep(x, times=2)
> m
[1] 3 10 30 3 10 30
> n <- c(x,0,x)
> n
[1] 3 10 30 0 3 10 30
# SOLUTION 2.
> m==n
[1] TRUE TRUE TRUE FALSE FALSE FALSE FALSE
# SOLUTION 3.
> length(m)
[1] 6
> length(n)
[1] 7
```

### How to Create and Manipulate Lists and Data frames in R 
**Lists and Data frames in R** 

A List is an “object” in R that consist of a collection of other objects known as components. 

Lists can have components of the same type or mode, or components of different types or modes. They can hence combine different components (numeric, logical…) in a single object. 

A Data frame is simply a List of a specified class called “data.frame”, but the components of the list must be vectors (numeric, character, logical), factors, matrices (numeric), lists, or even other data frames. Other restrictions include the fact that the contents of a data frame must have the same length (vectors), or be of the same row size (matrices). A data frame can be considered as a simple matrix containing rows and columns, having potentially different modes and attributes. 

We encourage you to find more information on Lists and Data frames in the following link: https://cran.r-project.org/doc/manuals/r-release/R-intro.html Let’s see together in this step how Lists and Data frames can be created and manipulated. 

**How to create and manipulate Lists** 

**Step 1.** We recommend you to work in the same working sub-directory that you created previously, using one of the following options 


Before launching R
```bash
$ cd exerciseR
$ pwd
/Users/imac/Desktop/exerciseR
$ R
```
After launching R
```R
> setwd("/Users/imac/Desktop/exerciseR")
> getwd()
[1] "/Users/imac/Desktop/exerciseR"
```
**Step 2.** Let’s create a simple List called L. We need to assign elements to this List. 
```R
> L<-list(dairy="milk",type="almond",form="liquid",contain.liter=c(0.5,1,2))
```
This will create a list called L with 4 elements. 

```R
> L<-list(dairy="milk",type="almond",form="liquid",contain.liter=c(0.5,1,2))
> 
> L
$dairy
[1] "milk"
 
$type
[1] "almond"
 
$form
[1] "liquid"
 
$contain.liter
[1] 0.5 1.0 2.0
```

**Step 3.** The function “length()” can allow you to easily retrieve the number of top level components of this List. 

```R
> length(L)
[1] 4
```

**Step 4.** Please note that components of a list are always numbered by default. If L is the list with 4 components we just created, then L[[1]] will be its first component, etc. We can also refer to the first entry of Component 4 independently, as L[[4]] is a vector itself and L[[4]][[1]] will refer to its first entry. 

```R
> L[[1]]
[1] "milk"
> L[[2]]
[1] "almond"
> L[[3]]
[1] "liquid"
> L[[4]]
[1] 0.5 1.0 2.0
> 
> L[[4]][[1]]
[1] 0.5
```

**Step 5.** More conveniently, we could also refer to the Component of a List by its name, instead of using its position number between double brackets. When using this option, you will need to provide the Component name by using the “$” symbol. As an example, you can use L$dairy or L[[1]] to refer to the first component of a List equally 

```R
> L$dairy
[1] "milk"
> L[[1]]
[1] "milk"
```
**Step 6.** Different Lists can be combined using the concatenation function that we used before, c(). This will result in an object of mode List also, because we gave this function arguments of the mode List. 

```R
> List.A <- list(dairy="milk", type="almond")
> List.B <- list(dairy="yogurt", type="frozen")
> List.AB <- c(List.A, List.B)
> List.AB
$dairy
[1] "milk"
 
$type
[1] "almond"
 
$dairy
[1] "yogurt"
 
$type
[1] "frozen"
```
**Note.** Please note that there are many more options to use the Lists. We only covered those that might be relevant to understand for the rest of the course. We encourage you to find more information on lists in the link given to you in the introductory part of this Step. 

**How to create and manipulate Data frames** 

**Step 1.** Now that we know how Variables, Vectors, and Lists can be created and manipulated, let’s use this knowledge to create sequentially a data frame called df. 

```R
> Name <- c("Lilly", "James", "Harry")
> Age <- c(30,  31, 11)
> Height <- c(168, 179, 139)
> Weight <- c(57, 69, 32)
> df <- data.frame (row.names = Name, Age, Height, Weight)
```

**Step 2.** Once created, the data frame can be called directly by simply typing its name. 
```R
> Name <- c("Lilly", "James", "Harry")
> Age <- c(30,  31, 11)
> Height <- c(168, 179, 139)
> Weight <- c(57, 69, 32)
> df <- data.frame (row.names = Name, Age, Height, Weight)
> df
      Age Height Weight
Lilly  30    168     57
James  31    179     69
Harry  11    139     32
```

**Step 3.** Additional information can be added to an existing data frame. We can create a new data frame containing the same names, to be able to make the correspondence (used as a primary key) and then combine both data frames using cbind(), a function used to combine objects (vectors, data frames,…) by columns. 

```R
> Name <- c("Lilly", "James", "Harry")
> Sex <- c("F", "M", "M")
> df.add <- data.frame(row.names = Name, Sex)
> df.add
      Sex
Lilly   F
James   M
Harry   M
> df.all <- cbind(df, df.add)
> df.all
      Age Height Weight Sex
Lilly  30    168     57   F
James  31    179     69   M
Harry  11    139     32   M
```

**Step 4.** The information added can be in the form of Factors that can be used to represent categorical data, and can help you using plotting functions later on. Let’s create again a new data frame (df.add.fact) with the information in the Sex vector added as a Factor, and combine both in a new data frame (df.all.fact) 

```R
> Name <- c("Lilly", "James", "Harry")
> Sex <- as.factor(c("F", "M", "M"))
> df.add.fact <- data.frame(row.names = Name, Sex)
> df.all.fact <- cbind(df, df.add.fact)
> df.all.fact
      Age Height Weight Sex
Lilly  30    168     57   F
James  31    179     69   M
Harry  11    139     32   M
```

**Note 1.** Note that we coerced the content of “Sex” to be a Factor by as.factor(). Factors are categorical data that can only take certain values such as “M” and “F”, which is the case of the field “Sex”. These distinct values are predefined and will be called Levels. This can be checked using the functions class() and levels() 

```R
> class(Sex)
[1] "factor"
> levels(Sex)
[1] "F" "M"
```

**Note 2.** At this stage, you will notice no difference. But using levels() you will be able to see how factors can now be recognised as such. 

```R
> levels(df.all$Sex) <- c("M", "F")
> df.all
      Age Height Weight Sex
Lilly  30    168     57   M
James  31    179     69   F
Harry  11    139     32   F
> 
> levels(df.all.fact$Sex) <- c("M", "F")
> df.all.fact
      Age Height Weight Sex
Lilly  30    168     57   M
James  31    179     69   F
Harry  11    139     32   F
```

To query the type of levels we can use “levels()” and to query the number of levels, you can use “nlevels()” 

```R
> levels(Sex)
[1] "F" "M"
> nlevels(Sex)
[1] 2
```

**Step 5.** Let’s see a set of useful functions to explore and manipulate a data frame 

1. How many rows and columns are in the data frame df.all.fact ? you can use dim() to set or get the dimension of the data frame (rows, columns), or more specifically nrow() for the number of columns and ncol() for the number of columns. 

```R
> dim(df.all.fact)
[1] 3 4
> nrow(df.all.fact)
[1] 3
> ncol(df.all.fact)
[1] 4
```

2. What is the class of data in each column? Use sapply() which will output the result of a certain function to an object (here will output the classes in the data frame) or str() to display the structure of an object in R or all basic structures of a data frame (one line for each) 

```R
> sapply(df.all.fact, class)
      Age    Height    Weight       Sex 
"numeric" "numeric" "numeric"  "factor" 
> 
> str(df.all.fact)
'data.frame':	3 obs. of  4 variables:
 $ Age   : num  30 31 11
 $ Height: num  168 179 139
 $ Weight: num  57 69 32
 $ Sex   : Factor w/ 2 levels "M","F": 1 2 2
```

3. It is possible to subset or filter a data frame, as simply as we did it for Lists. For instance, let’s see here how to select one column or one row. 


To select a column: [1] is column 1, [,1] is column 1 displayed as a vector 


To select a row: [1,] is row 1 

```R
> df.all.fact[1]
      Age
Lilly  30
James  31
Harry  11
> df.all.fact[,1]
[1] 30 31 11
> 
> df.all.fact[1,]
      Age Height Weight Sex
Lilly  30    168     57   M
```

4. This is how to select a group of elements. 


To select the element in column 1 and row 1: [1,1] 


To select elements 1 to 3 in column 3 

```R
> df.all.fact[1,1]
[1] 30
> 
> df.all.fact[1:3,3]
[1] 57 69 32
```

5. To re-order data in a data frame, there are different options. We can use “order()”. Let’s try to re-order here based on the Height column 

```R
> df.all.fact
      Age Height Weight Sex
Lilly  30    168     57   M
James  31    179     69   F
Harry  11    139     32   F
> df.all.fact[order(df.all.fact$Height),]
      Age Height Weight Sex
Harry  11    139     32   F
Lilly  30    168     57   M
James  31    179     69   F
```

6. To filter the data, functions such as “unique()” and “sort()” can be used. This should remind you of the sort and uniq functions that can be used in Unix. 


To obtain unique values of the column Age: unique(df.all.fact$Age) 


To obtain sorted unique values of the column age: sort(unique(df.all.fact$Age)) 

```R
> unique(df.all.fact$Age)
[1] 30 31 11
> 
> sort(unique(df.all.fact$Age))
[1] 11 30 31
```

Note. There are different types of data that can be considered, and treated differently according to their nature. 

![image](https://user-images.githubusercontent.com/25624961/167741516-7e38a54d-2c0f-4bb1-9678-f5f97a360a8e.png)

### Working on Data Frames - Exercises and Discussion 
1. Create a Data frame 
Create a Data frame called df_fruits from the following Vectors:
- A Vector called Fruits composed of Apple, Banana, Orange, Mango
- A Vector called Price composed of 4, 3, 2, 8
- A Vector called Nature composed of Local, Exotic, Local, Exotic as factors

2. Check your Data frame 
How would you verify that the newly Data frame called df_fruits
- Is properly created
- What are the levels of the factors in the column called Nature
- How many different of these levels were created 

3. Manipulate your Data frame 
- How would you verify the number of rows and columns of the new Data frame called df_fruits?
- What class of data is in each column?
- How would you select all elements of the column called Price?

**Solution:**
```R
### Solution 1.
> Fruits <- c("Apple", "Banana", "Orange", "Mango")
> Price <- c(4, 3, 2, 8)
> Nature<- as.factor(c("Local", "Exotic", "Local", "Exotic"))
> df_fruits <- data.frame(row.names = Fruits, Price, Nature)
### Solution 2.
> df_fruits
 Price Nature
Apple 4 Local
Banana 3 Exotic
Orange 2 Local
Mango 8 Exotic
>
> levels(Nature)
[1] "Exotic" "Local"
> nlevels(Nature)
[1] 2
### Solution 3.
# 1. Number of rows and columns
> df_fruits
 Price Nature
Apple 4 Local
Banana 3 Exotic
Orange 2 Local
Mango 8 Exotic
> dim(df_fruits)
[1] 4 2
> nrow(df_fruits)
[1] 4
> ncol(df_fruits)
[1] 2
# 2. Classes of data
> sapply(df_fruits, class)
 Price Nature
"numeric" "factor"
> str(df_fruits)
'data.frame': 4 obs. of 2 variables:
$ Price : num 4 3 2 8
$ Nature: Factor w/ 2 levels "Exotic","Local": 2 1 2 1
# 3. There are 2 Possible solutions depending on the desired output
> df_fruits[1]
 Price
Apple 4
Banana 3
Orange 2
Mango 8
> df_fruits[1:4,1]
[1] 4 3 2 8

