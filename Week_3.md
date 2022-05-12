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
```

## Working with data and simple plots in R 
### Reading Data from Files in R 
**Introduction** 
Now that we have learned how to create, query and manipulate simple data frames, let’s see how the basic functions we covered can be useful with more complex datasets.  

Indeed, you will often be willing to exploit the usefulness of built-in functions in R to manipulate large data sets. Although these data sets are organized as data frames, with information organized in rows and columns, it is obviously not easy to create it from scratch. Instead, there are specific built-in functions in R that allows us to import existing data contained in a file.  

Let’s see together in this step how to read data from an existing file. We will also see how to simply query with basic functions in R this exiting data set.  

We will use the iris dataset, another example of tab-delimited file such as the diamonds dataset that you have used before in this course. It contains information about 3 plant species (setosa, virginica, versicolor) and related measures about 4 features (Sepal.Length, Sepal.Width, Petal.Length, Petal.Width) of these plants.  

**Note that this information is organized in a particular form:**  

- Each column is named to indicate the features and species to consider 
- Each row contains a row label and information corresponding to features and species 

If you want in the future to use another file you generated, make sure that no missing information is left empty. Instead, indicate it as NA (Not Applicable).  

We encourage you to find more information on reading, querying and manipulating data frames from files in the following links: https://cran.r-project.org/doc/manuals/r-release/R-intro.html and https://rpubs.com/moeransm/intro-iris 

**How to import and read data from files in R** 

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

**Step 2. There are 2 ways to use existing files and access the data sets they contain in R: 

**Option 1.** If the file exists in your computer, use the “read.table()” function to read the file / data frame. To view part of its content, you can use many functions as the “head()” or “tail()” functions as in Unix 

```R
> Iris <- read.table("iris.txt")
> head(Iris)
  Sepal.Length Sepal.Width Petal.Length Petal.Width Species
1          5.1         3.5          1.4         0.2  setosa
2          4.9         3.0          1.4         0.2  setosa
3          4.7         3.2          1.3         0.2  setosa
4          4.6         3.1          1.5         0.2  setosa
5          5.0         3.6          1.4         0.2  setosa
6          5.4         3.9          1.7         0.4  setosa
```
**Option 2.** R has also pre-built datasets that can be used for exercise purposes. We will use the “iris“ data set. This data set is available under the datasets package. To load a package under R, use the “library()” function. Once you loaded the datasets package, call the data set you want using the “data()” function  

```R
> library(datasets)
> data(iris)
> head(iris)
  Sepal.Length Sepal.Width Petal.Length Petal.Width Species
1          5.1         3.5          1.4         0.2  setosa
2          4.9         3.0          1.4         0.2  setosa
3          4.7         3.2          1.3         0.2  setosa
4          4.6         3.1          1.5         0.2  setosa
5          5.0         3.6          1.4         0.2  setosa
6          5.4         3.9          1.7         0.4  setosa
To review all the pre-build data sets available in R (type q to quit)

> data()
```

**Note 1.** Note that we called the variable in which we imported the file “Iris”, whereas the data set called from R is named “iris”. You are free to choose the name of the variables you use in R, but if you call data sets from the existing datasets package you must use its proper nomenclature 

**Note 2.** Note that once your data set of interest is loaded, all the commands and functions that we will use will be applicable to both “Iris” and “iris” equally. As an example, we will use “iris” in this Step. 

**How to make simple queries and data manipulation in R** 

**Step 1.** To view a summary statistics of the whole data set, use the “summary()” function. You can also view summary statistics of one of the variables using the “$” option we saw previously 

```R
> summary(iris)
  Sepal.Length    Sepal.Width     Petal.Length    Petal.Width   
 Min.   :4.300   Min.   :2.000   Min.   :1.000   Min.   :0.100  
 1st Qu.:5.100   1st Qu.:2.800   1st Qu.:1.600   1st Qu.:0.300  
 Median :5.800   Median :3.000   Median :4.350   Median :1.300  
 Mean   :5.843   Mean   :3.057   Mean   :3.758   Mean   :1.199  
 3rd Qu.:6.400   3rd Qu.:3.300   3rd Qu.:5.100   3rd Qu.:1.800  
 Max.   :7.900   Max.   :4.400   Max.   :6.900   Max.   :2.500  
       Species  
 setosa    :50  
 versicolor:50  
 virginica :50
> 
> summary(iris$Species)
    setosa versicolor  virginica 
        50         50         50 
> 
> summary(iris$Petal.Length)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  1.000   1.600   4.350   3.758   5.100   6.900 
```
**Step 2.** Let’s now query the names of columns using the “names()” function, and the data set content in terms of number of columns and rows, structure, etc… 

```R
> names(iris)
[1] "Sepal.Length" "Sepal.Width"  "Petal.Length" "Petal.Width"  "Species"     
>
> names(iris)
[1] "Sepal.Length" "Sepal.Width"  "Petal.Length" "Petal.Width"  "Species"     
> dim(iris)
[1] 150   5
> ncol(iris)
[1] 5
> nrow(iris)
[1] 150
>
> sapply(iris, class)
Sepal.Length  Sepal.Width Petal.Length  Petal.Width      Species 
   "numeric"    "numeric"    "numeric"    "numeric"     "factor" 
> str(iris)
'data.frame':	150 obs. of  5 variables:
 $ Sepal.Length: num  5.1 4.9 4.7 4.6 5 5.4 4.6 5 4.4 4.9 ...
 $ Sepal.Width : num  3.5 3 3.2 3.1 3.6 3.9 3.4 3.4 2.9 3.1 ...
 $ Petal.Length: num  1.4 1.4 1.3 1.5 1.4 1.7 1.4 1.5 1.4 1.5 ...
 $ Petal.Width : num  0.2 0.2 0.2 0.2 0.2 0.4 0.3 0.2 0.2 0.1 ...
 $ Species     : Factor w/ 3 levels "setosa","versicolor",..: 1 1 1 1 1 1 1 1 1 1 ...
```

**Step 3.** To query or manipulate this data set, it is possible to use basic operators in R 
```R
> setosa1 <- iris[iris$Species == "setosa",]
> head(setosa1)
  Sepal.Length Sepal.Width Petal.Length Petal.Width Species
1          5.1         3.5          1.4         0.2  setosa
2          4.9         3.0          1.4         0.2  setosa
3          4.7         3.2          1.3         0.2  setosa
4          4.6         3.1          1.5         0.2  setosa
5          5.0         3.6          1.4         0.2  setosa
6          5.4         3.9          1.7         0.4  setosa
> nrow(setosa1)
[1] 50
```
Alternative option 
```R
> setosa2 <- iris[iris$Species %in% "setosa",]
> nrow(setosa2)
[1] 50
```
To select data related to the setosa species in which Sepal.Length > 5 
```R
> setosa3<- setosa2<-iris[iris$Species %in% "setosa" & iris$Sepal.Length>5,]
> nrow(setosa3)
[1] 22
```
**Step 4.** To avoid using operators, conditional subsetting is also possible with base functions in R that can ease the process and using the same principles. An example is the “subset()” function 

To select only data related to the setosa species 
```R
> setosa.sub1 <- subset(iris, Species == "setosa")
> head(setosa.sub1)
  Sepal.Length Sepal.Width Petal.Length Petal.Width Species
1          5.1         3.5          1.4         0.2  setosa
2          4.9         3.0          1.4         0.2  setosa
3          4.7         3.2          1.3         0.2  setosa
4          4.6         3.1          1.5         0.2  setosa
5          5.0         3.6          1.4         0.2  setosa
6          5.4         3.9          1.7         0.4  setosa
> nrow(setosa.sub1)
[1] 50
```
To select again data related to the setosa species in which Sepal.Length > 5
```R
> setosa.sub2 <- subset(iris, Species == "setosa" & Sepal.Length > 5)
> nrow(setosa.sub2)
[1] 22
```
**Exercise:** 
1. How would you check if the variables setosa1 and setosa.sub1 are equivalent?  
2. What is the structure of setosa.sub2 ?

**Solution:** 
```R
#SOLUTION 1.
> setosa.test <- setosa1 == setosa.sub1
> head(setosa.test)
 Sepal.Length Sepal.Width Petal.Length Petal.Width Species
1 TRUE TRUE TRUE TRUE TRUE
2 TRUE TRUE TRUE TRUE TRUE
3 TRUE TRUE TRUE TRUE TRUE
4 TRUE TRUE TRUE TRUE TRUE
5 TRUE TRUE TRUE TRUE TRUE
6 TRUE TRUE TRUE TRUE TRUE
#SOLUTION 2.
> str(setosa.sub2)
'data.frame': 22 obs. of 5 variables:
$ Sepal.Length: num 5.1 5.4 5.4 5.8 5.7 5.4 5.1 5.7 5.1 5.4 ...
$ Sepal.Width : num 3.5 3.9 3.7 4 4.4 3.9 3.5 3.8 3.8 3.4 ...
$ Petal.Length: num 1.4 1.7 1.5 1.2 1.5 1.3 1.4 1.7 1.5 1.7 ...
$ Petal.Width : num 0.2 0.4 0.2 0.2 0.4 0.4 0.3 0.3 0.3 0.2 ...
$ Species : Factor w/ 3 levels "setosa","versicolor",..: 1 1 1 1 1 1 1 1 1 1 ...
```

### Querying and Manipulating Data from Files Using Dedicated Packages in R 
**Introduction** 

Querying and manipulating data from files might require you to use advanced options. In R, packages have been developed for specific purposes such as data manipulation, data analysis, or plotting. Packages need first to be installed and loaded into R. Each package comes with a set of functions. 

Let’s see together in this step how to query and manipulate data from an existing file using a dedicated package called dplyr. We will see how some of its functions can be helpful for more complex queries and manipulation of your data than basic R functions. 

We will keep using the iris dataset, that you have used already. 

We encourage you to find more information on reading, querying and manipulating data frames from files in the following links: https://cran.r-project.org/doc/manuals/r-release/R-intro.html and https://rpubs.com/moeransm/intro-iris 

**Import and read data from files in R** 

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
**Step 2.** You should be able now to call again the dataset we want you to work on, the iris data set. 

To read the file from your computer 

```R
> Iris <- read.table("iris.txt")
> head(Iris)
  Sepal.Length Sepal.Width Petal.Length Petal.Width Species
1          5.1         3.5          1.4         0.2  setosa
2          4.9         3.0          1.4         0.2  setosa
3          4.7         3.2          1.3         0.2  setosa
4          4.6         3.1          1.5         0.2  setosa
5          5.0         3.6          1.4         0.2  setosa
6          5.4         3.9          1.7         0.4  setosa
```
To read the file from the available data sets in R 

```R
> library(datasets)
> data(iris)
> head(iris)
  Sepal.Length Sepal.Width Petal.Length Petal.Width Species
1          5.1         3.5          1.4         0.2  setosa
2          4.9         3.0          1.4         0.2  setosa
3          4.7         3.2          1.3         0.2  setosa
4          4.6         3.1          1.5         0.2  setosa
5          5.0         3.6          1.4         0.2  setosa
6          5.4         3.9          1.7         0.4  setosa
```
**Using the dplyr package** 

**Step 1.** To use the dplyr package on the iris data set, we will need to call the package. 

Because dplyr is not genuinely part of R, we will need to install it first using the “install.packages()” function 

```R
> install.packages("dplyr")
--- Please select a CRAN mirror for use in this session ---
Secure CRAN mirrors 
 
 1: 0-Cloud [https]
 2: Australia (Canberra) [https]
 3: Australia (Melbourne 1) [https]
……
76: USA (TX 1) [https]
77: Uruguay [https]
78: (other mirrors)
```

Once you select your CRAN mirror of interest (the closest to your location) as we did before, the installation will proceed. Once terminated, you will be able to load the package using the “library()” function 

```R
> library(dplyr)
```

**Note 1.** A package comes with specific functions that would not otherwise be recognized in R. Examples of basic verbs for data manipulation available with the dplyr package are “filter()”, “select()”, “mutate()”, “arrange()”, “rename()”, “relocate()”, “slice()”, “summarise()”. We will see how to use the first 3 verbs, but if you want information on other dplyr functions, or more advanced options, please refer to https://dplyr.tidyverse.org/articles/dplyr.html 


**Note 2.** For all dplyr functions, as it will be the case for other packages in R, the first argument needs to be the data frame, also called tibble. 


**Step 2.** Let’s see how you can now use the “filter()” function to filter specific data from this file, as we used the “subset()” function in base R. Let’s again filter only the data related to the Species “setosa” 


Filtering the data after installing and loading the package 

```R
> setosa.filt <- filter(iris, Species == "setosa")
> head(setosa.filt)
  Sepal.Length Sepal.Width Petal.Length Petal.Width Species
1          5.1         3.5          1.4         0.2  setosa
2          4.9         3.0          1.4         0.2  setosa
3          4.7         3.2          1.3         0.2  setosa
4          4.6         3.1          1.5         0.2  setosa
5          5.0         3.6          1.4         0.2  setosa
6          5.4         3.9          1.7         0.4  setosa
```
To check that the new variable setosa.filter generated contains only data related to setosa species, as it was also the case for the variable setosa generated with the “subset()” function in base R (previous Step9) 

```R
> nrow(setosa)
[1] 50
> nrow(setosa.filt)
[1] 50
```
To filter on multiple conditions: here based on setosa species having a Petal.Length smaller than 2, then > 2 

```R
> setosa.filt.pl2 <- filter(iris, Species == "setosa", Petal.Length < 2)
> head(setosa.filt.pl2)
  Sepal.Length Sepal.Width Petal.Length Petal.Width Species
1          5.1         3.5          1.4         0.2  setosa
2          4.9         3.0          1.4         0.2  setosa
3          4.7         3.2          1.3         0.2  setosa
4          4.6         3.1          1.5         0.2  setosa
5          5.0         3.6          1.4         0.2  setosa
6          5.4         3.9          1.7         0.4  setosa
> nrow(setosa.filt.pl2)
[1] 50
> setosa.filt.pl2 <- filter(iris, Species == "setosa", Petal.Length > 2)
> nrow(setosa.filt.pl2)
[1] 0
```

**Note.** Note that if the 2 variables are of the same name (data filtered based on > 2 or <2), the latter will replace the previous 


**Step 3.** To select specific columns, the “select()” function can be very helpful To select specified columns that can be distant 

```R
> Iris.select <- select(iris, Sepal.Length, Petal.Length) 
> head(Iris.select)
  Sepal.Length Petal.Length
1          5.1          1.4
2          4.9          1.4
3          4.7          1.3
4          4.6          1.5
5          5.0          1.4
6          5.4          1.7
```
To select a group of consecutive columns  
```R
> Iris.select.2 <- select(iris, Sepal.Length:Petal.Width) 
> head(Iris.select.2)
  Sepal.Length Sepal.Width Petal.Length Petal.Width
1          5.1         3.5          1.4         0.2
2          4.9         3.0          1.4         0.2
3          4.7         3.2          1.3         0.2
4          4.6         3.1          1.5         0.2
5          5.0         3.6          1.4         0.2
6          5.4         3.9          1.7         0.4
```

**Step 4.** Now imagine you would like to add new columns to an existing data frame. The “mutate()” function can be used in the following example to add a new column called Test, with the information of whether Sepal.Length is greater than twice the size of Petal.Length (TRUE) or not (FALSE) 

```R
> test.col <- mutate(iris, Test = Sepal.Length > 2 * Petal.Length)
> head(test.col)
  Sepal.Length Sepal.Width Petal.Length Petal.Width Species Test
1          5.1         3.5          1.4         0.2  setosa TRUE
2          4.9         3.0          1.4         0.2  setosa TRUE
3          4.7         3.2          1.3         0.2  setosa TRUE
4          4.6         3.1          1.5         0.2  setosa TRUE
5          5.0         3.6          1.4         0.2  setosa TRUE
6          5.4         3.9          1.7         0.4  setosa TRUE
> tail(test.col)
    Sepal.Length Sepal.Width Petal.Length Petal.Width   Species  Test
145          6.7         3.3          5.7         2.5 virginica FALSE
146          6.7         3.0          5.2         2.3 virginica FALSE
147          6.3         2.5          5.0         1.9 virginica FALSE
148          6.5         3.0          5.2         2.0 virginica FALSE
149          6.2         3.4          5.4         2.3 virginica FALSE
150          5.9         3.0          5.1         1.8 virginica FALSE
```

**Exercise:** 

1. Using this last example, how would you count the number of TRUE items in the newly created Test column? 

**Solution:** 
```R
#SOLUTION 1.
> test.col.num <- filter(test.col, test == "TRUE")
> nrow(test.col.num)
[1] 50
#You can double check the total number of rows in test.col and the complementary number of FALSE items
> test.col.num2 <- filter(test.col, test == "FALSE")
> nrow(test.col.num2)
[1] 100
> nrow(test.col)
[1] 150
```

### Making Simple Plots in R 

**Introduction** 

The majority of us have long been in the habit of using Excel to make plots. This is still fine for some small data sets, but for large data sets, it is really complicated to load data in Excel and manipulate it. Moreover, Excel is prone to errors when manipulating the data when it comes to filtering, arranging, or querying complex data. This is without even mentioning the complexity of generating and arranging plots in a publishable way. 

In a world where information is mainly visual, whether science, journalism or even social media publications, R can rapidly and efficiently meet our needs. We will see here how very basic functions in R can make your life easier! 

We encourage you to find more information on plotting data frames from files in the following links: https://cran.r-project.org/doc/manuals/r-release/R-intro.html and/or https://rpubs.com/moeransm/intro-iris and/or https://hbctraining.github.io/Intro-to-R/lessons/basic_plots_in_r.html 


**Import and read data from files in R** 

**Step 1.** We recommend that you work in the same working sub-directory that you created previously, using one of the following options 

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

**Step 2.** Import or load the iris dataset we want you to work on 

From your computer 

```R
> Iris <- read.table("iris.txt")
```
From the available data sets in R 

```R
> library(datasets)
> data(iris)
```

**Basics of plotting graphics in R** 

**Introduction** 


The principle of plotting using R commands is to provide generally 2 main information types: (1) the data we want to use, and (2) preferences or options for display. This information should be provided as individual elements, that will be interpreted in R as arguments. They are interpreted as layers of information. 


**Simple basic graphics in R** 

Basic graph types found in typical spreadsheet software also exist in R, such as histograms, barplots, scatterplots or boxplots. These can be generated using commands or functions such as “hist()”, “barplot()”, “plot()”, “boxplot()” respectively. Many others exist, all as part of the ‘base’ graphics package of R, but we will only cover examples of graphs generated with “hist()” and “plot()”. For a full list of variants, use 

```R
> library(help = "graphics")
```

**Making simple basic graphics in R** 

The structure usage is function(data, options) Whatever is specified after the command is called arguments. Each command or function has its own set of arguments, but they will all follow the same structure. Please note that: 


- Some plotting functions in R can be used with either a whole data set, or specific data from a data frame (such as “plot()”), but others need data to be specified (such as “hist()”) 

- You can also provide your data with no options. This will generate an automatic graph of the data and will use the default options of the command.
Histogram with function “hist()” 

**Step 1.** Why choose histograms to represent your data? Generally because you want to show the distribution of numerical data. To see examples of graphs you can generate with “hist()”, use the function “example()” 

```R
> example("hist")
```

**Step 2.** Usage: 

hist(x, …) 

example of possible arguments (https://www.rdocumentation.org/packages/graphics/versions/3.6.2/topics/hist)  

hist(x, breaks =, freq =, probability =, include.lowest =, right , density =, angle , col =, border =, main =, xlim =, ylim =, xlab =, ylab =, axes =, plot =, labels =, nclass =, warn.unused =, …) 

**Note.** We need to specify which specific data from the iris data set we want to represent. The x corresponds to the data to represent. The following arguments are generally parameters that impact the graphical output. 

**Step 3.** Let’s generate a histogram of Sepal.Length using default (only the data is specified) or advanced arguments. 

Default arguments will output a histogram in a simple format (default naming of axis, colors, font…), but note how the axes have been optimized for the data. 

```R
> hist(iris$Sepal.Length)
```
![image](https://user-images.githubusercontent.com/25624961/167984712-d1da27ef-db24-4443-8e14-756947695767.png)

Using advanced arguments can allow you to customize different features in your output. The following options will rename the x-axis (xlab), give a title to the graph (main), color the borders (border), color the bars (col), and modify the y-axis limits (ylim) 

```R
> hist(iris$Sepal.Length, xlab="Sepal Length", 
main="Histogram of Sepal Length", border="white", 
col="red3", ylim=c(1, 40))
```
![image](https://user-images.githubusercontent.com/25624961/167984819-0c0dc2e8-9bd2-4c93-b155-b51ebd1d99d2.png)

**Note.** Colors can also be specified using the HEX (hexadecimal) color code. You can find more information on HEX color codes in https://www.color-hex.com/  

Histogram of Sepal.Length with the same arguments as before, except that we will remove the borders and color the bars with the same red colour but using now the HEX color code  

```R
> hist(iris$Sepal.Length, xlab="Sepal Length", 
main="Histogram of Sepal Length", border=FALSE, 
col="#CD0000", ylim=c(1, 40))
```
![image](https://user-images.githubusercontent.com/25624961/167984943-217a7b31-f453-4b06-bdc1-af2ec7231e07.png)

**Plot with function “plot()”** 

**Step 1.** As you can imagine, plot is a generic term to design a wide range of graphics. The function “plot()” allows us to create many different plots 


```R
> methods(plot)
```

**Step 2.** Usage: 


plot(x, y,…) 

example of possible arguments (https://www.rdocumentation.org/packages/ROCR/versions/1.0-11/topics/plot-methods) 


plot(x, y, type=, main=, xlab=, ylab=, pch=, col=,…) 


**Note.** Here type specifies the type of plot that can be generated and are of many types such as “p” (points), “l” (lines), “b” (both), “o”, (both overplotted), etc 

**Step 3.** With “plot()”, you can either use by default the whole data set or specify which specific data from the iris data set we want to represent. 


**Scatterplot of the whole dataset** 

```R
> plot(iris) 
```
![image](https://user-images.githubusercontent.com/25624961/167985124-f383dd8d-573e-42fe-8ccc-509a125beb9d.png)

Scatterplot using specified data (Sepal.Length vs. Petal.Length). Remember that these are continuous numeric data. You can test how to produce the same  output with: 


**Option 1** 

```R
> plot(iris$Sepal.Length, iris$Petal.Length)
```
**Option 2** 

```R
> plot(Petal.Length ~ Sepal.Length, data=iris)
```

**Option 3** 

```R
> plot(Petal.Length ~ Sepal.Length, iris)
```

**Option 4** 

```R
> with(iris, plot(Sepal.Length, Petal.Length))
```

![image](https://user-images.githubusercontent.com/25624961/167985280-e35c457f-01bc-4705-bc87-9345bed2ff29.png)

Scatterplot using specified data and options. We will shape the points with pch, change their size using cex, and their color using col 

```R
> plot(iris$Sepal.Length, iris$Petal.Length, 
main="Sepal vs Petal Lengths", xlab="Sepal.Length", 
ylab="Petal.Length", pch="*", cex=2.0, col="red3") 
```
![image](https://user-images.githubusercontent.com/25624961/167985333-174d23b3-7e95-4a16-9b88-1b5c9f8afe18.png)


Scatterplot using specified data and options to change the background color and margin sizes with “par()”, a function used to specify general graphical parameters such as bg (background color), or mai (margins in inches for bottom, left, top and right) 

```R
> par(bg="lightgrey", mai=c(2,1,2,1.5))
> plot(iris$Sepal.Length, iris$Petal.Length, 
main="Sepal vs Petal Lengths", xlab="Sepal.Length", 
ylab="Petal.Length", pch="*", cex=3.0, col="red3")
```
![image](https://user-images.githubusercontent.com/25624961/167985396-ba214e47-78ee-48fe-88a9-5064c4f4f488.png)

**Note.** You can quit these global graphical options by using “dev.off()”, or closing the graphical display 

**Saving a plot** 

By default, any plot you generate will be displayed in your graphic device window. To save a plot, you will have different options. 


**Option 1.** First choose the output format (such as jpeg, png, pdf…), name your plot, generate it, then escape by closing the file. You will find the saved file in your working directory. 


To make and save a file using default options 

```R
> pdf('test_hist.pdf')
> hist(iris$Sepal.Length)
> dev.off()
```

To make and save a file using advanced options, such as width and height (in inches) 

```R
> pdf('test_hist.pdf', 7, 10)
> hist(iris$Sepal.Length)
> dev.off()
```

**Option 2.** If you already generated your plot, and forgot to create the output file first, you can still use the “dev.copy()” command, with both the default or advanced options 

```R
> hist2(iris$Sepal.Length)
> dev.copy(pdf,'test_hist2.pdf')
> dev.off()
```

**Note.** These options will work with any OS (Linux, Mac, Windows). Some OSes offer the possibility to save the graphic window that opens with the “Save” or “Save as” option.  

### Exercise and Discuss - Working on Simple Plots 

Practise simple plotting in R 

1. Based on the same plotting principles you saw with the “plot()” function, can you draw a boxplot of the whole iris dataset? 
2. Based on the same plotting principles you saw previously, can you draw a boxplot of the Sepal.Width (x-axis) and Petal.Width (y-axis) from the iris dataset?
3. Can you add to the previous boxplot the title “Boxplot Petal.Width vs. Sepal.Width”, and colour the boxplot using the “LightBlue” colour with its HEX colour code, and colour borders in “DarkSlateGray” with its HEX colour code? 

*Hint: you can browse websites dedicated to color code conversions to find the correspondence between a colour name and its HEX colour code, there are many available.* 

**Solution:**
```R
#Solution 1.
#To draw the boxplot, use the following
> boxplot(iris)
#Solution 2.
#To draw the boxplot, use the following
> boxplot(Petal.Width ~ Sepal.Width, data=iris)
#Solution 3.
#To draw the boxplot, use the following
> boxplot(Petal.Width ~ Sepal.Width, iris, col="#add8e6", border="#2f4f4f", main="Boxplot Peal.Width vs. Sepal.Width")
```
<img width="329" alt="Captura de Pantalla 2022-05-11 a la(s) 22 24 52" src="https://user-images.githubusercontent.com/25624961/167985934-c7f5a9ef-8e4d-4e62-ac85-10c023796a8b.png">

## Working with RStudio

### Data Visualisation Packages and Principles - a Focus on ggplot2 

**Data visualization packages in R/RStudio** 

For the rest of the Steps, we will see how to use a dedicated package in RStudio for data visualization, called ggplot2.  

Many packages exist that are devoted to data visualization. 

The base graphics comes for example with the graphics package, and allows you to generate simple plots and then to improve aspects of the plot possibly through series of functions (we saw a quick example with “par()” and “plot()”). 

The lattice plotting system is implemented with other packages such as the lattice package, which supports generating trellis graphs. It is generally used with a single function call that would specify all graphical parameters, which allow R to automatically compute the necessary graphical display. 

With the ggplot2 package, we are almost combining both concepts. This package is based on using the grammar of graphics concept. It became so popular, that many other data visualization packages can complement it or use it, or are based on the same concepts. Examples of other packages are ggforce or ggvis. 

It is also possible now to create more advanced interactive graphs in R/RStudio using packages such as Plotly or Shiny. 

**The grammar of graphics: basics of ggplot2** 

The grammar of graphics is the concept of using a particular grammar or language to specify and create certain statistical and graphical displays for data visualization. 

Applied to ggplot2, the grammar of graphics is implemented in a layered approach, using layers of information (data complemented with statistical or graphical information) to build up step by step to a final display of a graph. 

Layers complement each other in ggplot2 with different information types such as the aesthetics, the geometries, the faceting, the scales, the themes, the coordinates, the labels, and many others. 

Here are explanations of some of these layers : 
|               |               |
| ------------- | ------------- |
|DATA |	The data you want to plot |
|AESTHETICS |	The graphical properties of data on the plot (x, y, …) |
|GEOMETRIES |	The graphical elements that determines the visual display of a plot (point, line, bar, area, …). Each geometric object is related to specific aesthetics. For example, a geometric object “point” is related to aesthetics shape, size, color and position |
|FACETING |	reorganizes the variables of a data into subsets with a certain graphical arrangement of elements |
|SCALES |	defines how data is mapped as related to aesthetics (item colors according to their class, …) |
|THEMES |	customizes non-data related display by defining options not directly related to the data itself |
|COORDINATES |	customizes the coordinates |
|LABELS |	sets plot title, legend or axis names |


![image](https://user-images.githubusercontent.com/25624961/167989055-89f5ebce-c2b4-47f4-a9fb-48519dbbca7e.png)

### Data Visualisation with ggplot2 - Setting Data, Aesthetics and Geometries 



