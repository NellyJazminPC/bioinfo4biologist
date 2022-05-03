# Bioinformatics for Biologists (futurelearn.com)

# Weak 1
### Glossary

- argument - generally, arguments are options controlling how functions and commands should operate on specific data

- bash - Bourne Again Shell (Bash). A shell developed by Brian Fox in 1988.

- bioinformatics - the science of collecting and analysing complex biological data.

- command - a type of input, typically given in a terminal, which instructs the system to perform a given task.

- CRAN - the Comprehensive R Archive Network. Provides access to mirrors, a set of sites spread worldwide, for downloading R and related packages

- csv file - comma-separated values file. In these files, a “comma” delimiter is used to separate items of the same line

- .csv - extension of a csv file

- data frame - a group of vectors organised together in a list. In other words, a data frame is a data set containing data organized in columns and rows

- exit status/code - value returned by a command or process to it’s caller.

- function - a set of statements allowing to perform a task

- getwd() - get your current working directory in R

- GUI - a graphical user interface through which users interact with electronic devices

- help() or ? - help() is a function and “?” an operator in R to provide help

- install.packages() - install new R packages

- kernel - the computer program at the core of an operating system. The kernel has control of everything in the system

- library() - load a package that has been previously installed

- list - a set of objects of any class, linked together

- loop - process by which code can be repeated multiple times.

- MLST - multilocus sequence typing. A technique in microbiology for isolating microbial species using the DNA sequences of housekeeping genes.

- mode - the property of an object in R, such as numeric, character, logical, etc…

- object - a variable or a data set or any form of item containing information created or used in R. More generally, anything that has a “mode” is an object in R (data frames, vectors, lists, etc…)

- package - a collection of functions and commands written in order to achieve a certain goal in R, and allowing users to easily query their data using specific commands and arguments for each package

- QC - quality control. In DNA sequencing, ensuring that the sequenced data is suitable to use in further analyses.

- script - a form of computer program, typically a file, which contains a collection of commands.

- setwd() - set your working directory

- shell - generic name for an application or program which provides access to the underlying system resources.

- string - a one dimensional array of characters

- terminal - a GUI-based interface into which users can type commands and print text output

- text editor - a computer program for editing plain text files. This differs from a word processor, which includes text formatting.

- text file - a computer file in which data is stored in a particular structure of successive lines. When used for more complex purposes, it is generally structured in lines for the entries and in columns or “fields” for different conditions. All elements in these entries are delimited from one another by “separators” (spaces, tabulation, etc…)

- UNIX - is an operating system developed by Bell Laboratories of AT&T, and is an example of a multi-tasking, multi-user operating system

- user - the individual accessing system resources.

- variable - a string of characters that is used to denote some value stored within the computer and may be changed during execution of a programme
an object in R that stores data in a specified manner, and can be used to easily manipulate the data

- vector - the simplest structure of data in R, consisting of elements called components


###  Browser options
To practise, you can also use this browser based option:

https://bellard.org/jslinux/ choosing the Alpine Linux 3.12.0 Console link.

or

https://bellard.org/jslinux/vm.html?url=alpine-x86.cfg&mem=192



### Files permissions.     
There are three commands used to change ownership and permissions of files. These are chown, which changes user ownership of a file, chgrp, which changes group ownership of a file, and chmod, which changes the permissions of a file.

Generally, chown can only be used by users with admin rights so you are unlikely to use this command.      

Of the three commands listed above, chmod is the one you will probably use most frequently. It can be used in two ways. The first, known as numeric mode, unsurprisingly uses numeric arguments to set permissions for all three types of user (owner, group and universal). The basic syntax used is similar in some ways to the syntax used for chown and chgrp. It is

chmod OPTIONS THREE_DIGITS FILE[S]

As an example, chmod 666 file.txt will set a file called file.txt to be both readable and writable by the owner, the group and all users.

This site demonstrates the meaning of each digit and can be used to ensure you set permissions correctly:

https://chmod-calculator.com/

The second way to use chmod is known as symbolic mode. It uses a similar syntax but letters and symbols (+ and -) to set permissions. There are always three characters to the argument when running chmod in symbolic mode. The first character must always be a letter and can be one of u (user), g (group), o (others) or a (all i.e anyone covered by u, g or o). The second character is a symbol and can be either + to add a permission level or - to remove a permission level. The third character is a letter, which can be one of r (make files readable), w (make files writeable) or x (make files executable). As an example, chmod g+w file.txt will make file.txt writeable by anyone with group ownership.


### Text editing.   
Nano has a wide range of editing capabilities, which are highlighted in the link below.

https://www.nano-editor.org/dist/v2.2/nano.html

### Experience; Interview with Sandra Reuter; From the bench to the command line
https://www.futurelearn.com/courses/linux-for-bioinformatics/3/steps/1339200

### Symbolic Links and their Use.    
A symlink is a symbolic Linux/ UNIX link that points to another file or folder on your computer, or a connected file system. This is similar to a Windows shortcut.

```
ln -s /<path to file/folder to be linked> <path of the link to be created>
```


### Starting Useful Commands: wc to Count Aspects of a File.    

The UNIX wc command is a useful tool for counting the number of lines, words and characters in a file.

wc -l outputs the number of lines 

wc -w outputs the number of words

wc -c outputs the number of characters 

Further information on the wc command and its parameters can be found by accessing the following link.

https://linux.die.net/man/1/wc


### File Manipulation: sort and uniq.    
The sort command orders a list of items both alphabetically and numerically, whereas the uniq command removes adjacent duplicate lines in a list.

How to use sort

The sort command accepts input from a text-based file and outputs its results to the screen.

sort  fruit.txt
The sort results can also be output into another text file.

sort fruit.txt > sorted_fruit.txt
You can reverse the order of the sort with the -r option.

sort -r fruit.txt
Scrambling the order of lines is also possible with the -R option

sort -R fruit.txt
The -f option forces the sort to ignore the case of a letter when ordering lines.

sort -f fruit.txt
The -s option stabilises the sort by outputting identical lines in the same order as they appeared in the original file.

sort -s fruit.txt
Duplicate lines can be removed with the -u option

sort -u fruit.txt
How to use uniq

The uniq command accepts input from a text-based file and removes any repeated lines, only if they are adjacent to each other. That’s why it’s used in conjunction with sort to remove non-adjacent lines.

sort fruit.txt | uniq
Case differences can be ignored when dropping duplicate adjacent lines, using the -i option.

sort fruit.txt | uniq -i
Combining -i with the -c option for uniq, counts the number of times a line occurs in a file.

sort fruit.txt | uniq -ic
Using the -d option with -i inverts the behaviour of uniq and only prints the duplicated lines.

sort fruit.txt | uniq -id

### Pattern Matching (grep).   
One thing we often need to do is check whether a particular file or set of files contains a string of characters.

This process is known as pattern matching. Using the command line, this is done with a command called grep. The name derives from the old Unix editor, ed, and stands for “globally search for a regular expression and print matching lines”. A regular expression is a string of characters defining a search pattern. Regular expressions can become incredibly complex, involving any number of special characters, short cuts and groupings so, for now, we will deal only with searches involving plain text.

At its most simple, grep is run like this on a single file:

grep -F querystring filename.txt
As output, it displays a line by line list of all lines containing the text querystring. Please note that if the query string includes space characters, quotes should be placed at either end of it. Additionally, the -F option signifies that we are searching for fixed strings rather than regular expressions. This can be omitted by advanced users searching for complicated regular expressions.

Grep has many command line options to refine searches and change the output format. Run the following to see all of the available options:
```
man grep
```


1. Which files contain the word “difference”?

Answer: ghandi.txt, ghandi_2.txt and ghandi_cut.txt

2. How many times does the word “Premium” occur in the file diamonds_fix.txt?

Answer: 13791

3. How many lines in the file diamonds_fix.txt do not include the phrase “Very good”?

Answer: 53941



**Solutions:**
1. grep -r -H "difference" .

2. grep -c -e "Premium" Diamonds_fix.txt

3. grep -v -c -e "Very good" Diamonds_fix.txt    

### Substitutions Using sed.    
Replacing one text string with another is something we often need to do.

This could be because we’ve discovered a repeated typo or misspelling in a file or because we’ve decided one piece of text needs replacing with something which reads better. We could, of course, do this manually, going through a file, correcting each appearance of an error. However, this is both time consuming and prone to human error. Linux thus includes a command called sed which allows us to make such substitutions automatically. The name sed is an abbreviation of stream editor.

The command is run in the following way:

sed 's/oldtext/newtext/' file.txt
This will replace the string oldtext with newtext, taking input from the file file.txt and by default write the result to standout output, which is your terminal. To replace writing to a new file use a redirect:

sed 's/oldtext/newtext/' file.txt > newfile.txt
This will output instead to a file called newfile.txt.

To make changes in place in the input file, use the -i option:

sed -i  's/oldtext/newtext/' file.txt

_Only do this when absolutely sure that the substitution you are making is correct._


### File Processing with AWK    

AWK is a programming language. It is named after its three developers: Alfred Aho, Peter J Weinberger and Brian KernIghan

It is particularly useful for processing text files and extracting data, particularly when a file is split into columns or delimited by a specific character (e.g. a comma). AWK is a standard package in most Linux releases as well as Mac OSX. AWK is generally written in upper case, although the command itself is lower case.

AWK can be used to write complex scripts and programs but, in this course, we will use it directly on the command line. It reads a file line by line and splits each line into columns according to a delimiter character. The default delimiter is a single space character.

For the example commands given below, we will work with two files from the course data. These are Diamonds.csv, which contains comma separated values and Diamonds_fix.txt, which is delimited with the tab character. Both files contain the same data in 10 columns: carat, cut, color, clarity, depth, table, price, x, y and z. The last 3 (x, y and z) relate to the dimensions of the diamond in question.

In order to follow the commands below, please change directory into the directory containing your course data. Before beginning, it may be useful to run

man awk 
to see the options available for AWK and also see how some of the commonly used delimiter characters are viewed.

The first command to run is:

awk -F”\t” ‘{print $1}’ Diamonds_fix.txt
This will print the value in the first column of the file Diamonds_fix.txt.

A little explanation:

The option -F”\t” tells AWK that the delimiter is tab, which is generally represented as \t on the command line.
Each delimited column is represented by a $ symbol followed by a number. The number represents the column number so $1 is column1, $2 is column 2 etc. $0 prints the whole line.
For each line of the file, AWK will do whatever command is contained in the curly brackets. In this case, we are asking it to print the value in the first column.
You may wish to change this command so it runs on the file Diamonds.csv by changing the delimiter in the -F option.

Like grep, AWK can be used to filter files based on a line by line basis, based on the text they contain. However, as AWK splits lines into columns according to the delimiter, more precision is available. AWK can print only lines which have a specific value in a specific column. For example:

awk -F”\t” ‘$2==”Ideal” {print $0}’ Diamonds_fix.txt
This prints only the lines of Diamonds_fix.txt in which column 2 (cut) contains the value “Ideal”.

Some explanation:

The == symbol means ‘is equal to’. This is a common convention in programming languages with a single equals symbol generally meaning set the value to be.
The print command only happens when column 2 contains the value ‘Ideal’.
Generally, AWK commands are made of two parts, a pattern, such as ‘$2==”Ideal”’, and an action, in braces, such as ‘{print $0}’. The pattern defines the lines to which the action is applied. We could actually miss the action in this example, as AWK, by default will print the full line as output. Likewise, as we saw in the first example, if the pattern is omitted, AWK will perform the action on every line.

Patterns can be combined using the && symbol (for and) so a line is printed only if two or more conditions are met. For example:

awk -F”\t” ‘$2==”Ideal” && $4==”SI2”’ Diamonds_fix.txt
This command will print all lines in which column 2 has the value ‘Ideal’ and column 4 has the value ‘SI2’.

Likewise, using the || symbol (for or), we can print if any one of two or more conditions is met. For example:

awk -F”\t” ‘$2==”Ideal” || $4==”SI2”’ Diamonds_fix.txt
This will print a line column 2 has the value ‘Ideal’ or column 4 has the value ‘SI2’.

In addition to strings, awk can also filter on numeric values. For example:

awk -F”\t” ‘$1>1’ Diamonds_fix.txt
This will print all lines in which the first column has a value greater than 1. You will notice that the first line of header values is included in this. We can omit this simply by adding the condition ‘FNR>1’:

awk -F”\t” ‘FNR>1 && $1>1’ Diamonds_fix.txt
FNR represents the current line number so we’re asking AWK to print the line if this is greater than 1 (i.e. omit line 1).     

## Introduction to Environment Variables.    
In computer operating systems, an environment is an area that contains information about the behaviour of programs and applications.

Linux environment variables are used by applications to get information about the environment, and each environment variable is a variable with a name and an associated value.

Every time the environment is configured a new shell session is created, and this can be used as a learning experience to see how changing Linux environment variables can change things like the appearance of the shell, create paths to executable files, keyboard layout settings, and defining the default home directory for example.

Variables have the following format and by convention have upper case names. Though they are case-sensitive, so it is possible to have lower case names. Also, there is no space around the equals = symbol.

KEY=value KEY=”Another value”

If you assign multiple values to a variable then separate them with a colon : character.

KEY=value1:value2

There are two types of variables:

Environment variables are system wide and are inherited by all system processes and shells.

Shell variables only apply internally to the current shell instance.


Running printenv without any arguments will show a list of all the environment variables.


set – This sets or unsets shell variables. If used without an argument then it will print a list of all variables, both shell and environment, and shell functions.

unset – This deletes shell and environment variables.

export – This command sets environment variables.

Examples
Below are a few examples highlighting the difference between Environment and Shell variables. We’ll first create a Shell variable and then transform it into an Environment variable.

Create a new variable called MY_VARIABLE and give a value of Linux_Variable.

MY_VARIABLE=’Linux_Variable’
Verify the variable exists by typing:

echo $MY_VARIABLE
This will display:

Linux_Variable
Use the printenv command to check whether MY_VARIABLE is an environment variable or not. If the output is empty then it is not an environment variable.

printenv MY_VARIABLE
This will display no output.

Now we have our Shell variable, we can transform it into an Environment variable by typing:

export MY_VARIABLE
Check MY_VARIABLE exists by typing

printenv MY_VARIABLE
This time, the variable will now be displayed as it is an Environment variable: Linux_Variable

Please note that variables created in this manner will only be available in the current session, and will be lost when you log out or open a new shell.

In order to make the Environment variables persistent you’ll need to add them to specific Linux files.

Edit the following file using the nano editor.

nano /etc/environment
Add MY_VARIABLE=value to a new line and Save. Define your value accordingly. This could be text or a number for example.

Another useful method, if you are using Bash, is to declare your variable in the hidden .bashrc profile file.

nano ~/.bashrc
Add in a new line to the .bashrc file

export MYVARIABLE=” value”

Save and update the changes to the .bashrc file by typing

source ~/.bashrc
Hope you find this examples useful, do leave your comments in the comments section below.

Please note that modifying the bashrc profile file can have disastrous effects on your system if you don’t know what you’re doing, and can result in you being unable to login.      

More advanced manipulation of the bashrc script is beyond the scope of this course, but if you’re interested in reading further then check out the following link https://cloudzy.com/knowledge-base/what-is-linux-bashrc-and-how-to-use-it-full-guide/   

# Weak 2
### What is Bash/Shell Scripting?
https://www.futurelearn.com/courses/linux-for-bioinformatics/3/steps/1339211


**What is a shell?**  
We can crudely break a computer down into two main components: the operating system (e.g. UNIX) and the hardware (e.g. memory, graphics or CPU). Without hardware, there is very little that can be done with a computer. In order to communicate with this hardware, a piece of software, known as the operating system, is installed.

The operating system is typically broken down into two parts: the user space and the kernel. The kernel has direct access to the hardware and is responsible for sensitive tasks such as managing resources. Meanwhile, the user space acts as an interface, translating the needs of the user into the system calls that get run by the kernel.

So, now we get to the original question, “what is a shell”? A good analogy here is a hazelnut. At the core of a hazelnut is a soft, edible kernel, surrounded by the hardened shell to protect it. In computing, the shell is the generic name for an application or program which allows access to the system’s resources. You may also see this referred to as the command line interpreter or CLI. It acts as a wrapper, protecting the sensitive kernel inside.

**What is Bash?**   
There are many several types of shell available, each of which has a distinctive syntax. The first, the Thompson shell, was released in 1971 by Ken Thompson. However, this had many limitations leading Stephen Bourne to release his Bourne shell six years later, in 1977. Providing a more functional interaction with the operating system, the Bourne shell not only served as a CLI, but introduced variables, loops and control flows into shell scripts – useful concepts we’ll be introducing in more detail shortly!

Unfortunately, the most widely used shells at that time were not freely available. In order to bridge this divide, Brian Fox developed the Bourne-Again Shell (Bash) in 1988 for the GNU project. Bash is now the default shell on most Linux systems. Thus, understanding how to use it is a key part of any data scientist’s toolbox.

Depending on your operating system, your default shell may not be Bash. To check which shell you are using, you can run the following command:

```
echo $SHELL
```

This will return the full path of your interpreter. If your interpreter is Bash you will see a path similar to:

```
/bin/bash
```

Alternatively, you may also see the Z, C or TC shells which would have paths similar to one of the following:

```
/bin/zsh
/bin/csh
/bin/tcsh
```

You can get a full list if the shells that are available on your system by running:

```
cat /etc/shells 
```
To change the shell your computer uses temporarily (i.e. in the current terminal) you can type the interpreter executable name. For example, to switch your shell to csh, you can enter:
```
csh
```
This is a good way to play with other shells without making a permanent change. To switch back to your existing shell, press ```Ctrl-D```.  

If you like a particular shell and want to make the change permanent (i.e. set in all future terminals by default), you can use the chsh command with the -s option (bypassing the editor) and the path to the interpreter you want to use.

```
chsh -s /bin/bash
```
Note: you may need to log out (close the terminal) and log back in again (open a new terminal) for this change to take effect.

**What is shell scripting?*** 
Let’s say you want to know what proportion of lines in a file contain a particular phrase. First, you would need to determine the total number of lines in that file. Then, count the number of lines containing the phrase. Finally, you would need to perform a calculation to get the proportion of lines with that phrase. Simple, right?

Now let’s say you need to do this for 100 files, once for each file, and record the results…not so simple, eh?

You could take the extremely tedious approach of manually running the commands 100 times. But, how long would it be before you made a mistake? How would you track the output of all your commands? What if you needed to run the same thing again tomorrow?

No matter how careful you are, manual errors always creep in during these kinds of repetitive tasks. We have a simple path to salvation from this tedium…Bash/shell scripting!

Bash scripting is a powerful way to automate tasks which you need to execute on a computer. Put simply, a Bash script is just a collection of Bash commands which are kept in a text file.  

### how to write and execute your very first Bash script  
https://www.futurelearn.com/courses/linux-for-bioinformatics/3/steps/1339212?thread_ids%5B%5D=66795274#comment_66795274   
Para mas detalles, esta interesanta nota: 
https://dev.to/meleu/what-the-shebang-really-does-and-why-it-s-so-important-in-your-shell-scripts-2755  

### Adding Comments to Bash Scripts

Comments are one of the most important things to consider when you are writing your scripts.  
Making sure that you add comments throughout your scripts is just one of many good practices you should be keeping, no matter which programming language your scripts are written in.

Comments help you keep track of what your script is doing. They are useful because they allow you to leave internal notes throughout your script to remind you of things like what the next command will do or its expected output. You’re essentially annotating your scripts. 
**Why do I need to add comments to my script, I already know what it’s doing?** 
It’s not uncommon to write a script and then not come back to it for several months, at which point you will need to familiarize yourself with the code all over again. Comments simplify that process! 

In Bash, we can identify comments using the # symbol. Every line that starts with the # sign is for our reference only. In Bash, anything after the # is not interpreted or executed. The only exception to this rule is the shebang which goes at the start of our script. 

### Variables and Their Scope 
Bash variables provide temporary storage for information. You can use them to store words/phrases (strings), decimals or integers.

**Variables**
To assign a variable, we use the **=** symbol:

````
name="Victoria"
````

BE CAREFUL! When you assign a value to a variable, there should not be any spaces on either side of the = symbol. 
When we want to access a variable, we need to use the **$** symbol to reference it:
````
echo $name
Victoria
````

Because our variables may contain whitespace which gets interpreted by bash, it’s good practice to wrap the variable name in curly brackets and encase it in double quotes:
````
echo "${name}"
````

We can add variables to our Bash scripts, for example:
````
#!/usr/bin/env bash
name="Victoria"
greeting="Good morning,"
 
echo "${greeting} ${name}"
````

When you run this script, you should see:
````
Good morning, Victoria
````

In Bash, variables don’t have to be declared. What we mean by this is that if you try to access a variable that doesn’t exist, you won’t see an error, just a blank value.  
For example, a script containing the following commands:
````
#!/usr/bin/env bash
 
var2="foo"
 
echo "Variable 1 value: ${var1}"
echo "Variable 2 value: ${var2}"
````

Would return only the value of var2 because var1 had not been declared; Bash just ignored it.

````
Variable 1 value:
Variable 2 value: foo
````

**Variable scope**
There are two types of variable you need to be aware of:

- Local variables
- Global variables  

**_Local variables_** 
Local variables are only accessible within the section of code in which they are declared. For example, if we declare a variable inside our Bash script, it will not be accessible outside of that script.  
Let’s reuse our earlier script:

````
#!/usr/bin/env bash
 
var2="foo"
 
echo "Variable 1 value: ${var1}"
echo "Variable 2 value: ${var2}"
````

Now, we know when we run our script we can see the value of var2:
````
Variable 1 value:
Variable 2 value: foo
````

However, what happens if we call var2 outside of the script, directly in our terminal?

echo "Variable 2 value: ${var2}"
This time we get:

Variable 2 value:
As you can see, the scope of our variable was constrained to the script itself and its value is not accessible outside of that script.

The same principle is true for functions, which we will look at later in the week.

**_Global variables_**

In Week 1 we introduced you to global variables, also known as environment variables, that are available to all shells. You can recall global variables within your Bash scripts.

Let’s print our current working directory by recalling the value of the global variable, PWD from within our script:

#!/usr/bin/env bash
 
echo "${PWD}"
This will likely return a different path for you but, will look something like:

/Users/tory
You can create your own global variables by using the export command. First let’s declare a variable that contains our name:

MY_NAME="Victoria"
Next, let’s create a script that tries to access this variable:

#!/usr/bin/env bash
 
echo "My name is: ${MY_NAME}"
If we were to run this script, we wouldn’t see our name as the MY_NAME variable we created was only a local variable and therefore not accessible within our script.

My name is:
However, if we use the export command, we can declare MY_NAME as a global variable which is accessible in our script:

export MY_NAME="Victoria"
Our script would then output: 
```My name is: Victoria```  

In Bash, we can identify comments using the # symbol. Every line that starts with the # sign is for our reference only. In Bash, anything after the # is not interpreted or executed. The only exception to this rule is the shebang which goes at the start of our script.   
In Bash, we can identify comments using the # symbol. Every line that starts with the # sign is for our reference only. In Bash, anything after the # is not interpreted or executed. The only exception to this rule is the shebang which goes at the start of our script.   
Otra nota para más detalles https://devconnected.com/set-environment-variable-bash-how-to/  

### Bash Arrays 
A variable holds a single value under a single name. By contrast, a Bash array can hold multiple values under a single name.

You can initialise an array by assigning values that are separated by spaces in standard brackets.

For example:

array=("value 1" "value 2" "value 3")
Remember, there should be no spaces on either side of the = symbol.

Each value in an array is known as an element. Each element in an array is referenced by a numerical index. This index starts at 0.

The syntax to access the first value in our array would be:

echo "${array[0]}"
Notice that the index (0) is encased in square brackets. This will return the first value in our array:

value 1
We can return all of the values in our array by using the @ symbol:

echo "${array[@]}"
value 1 value 2 value 3
To count the number of elements in our array, we can prepend the array name with the # sign. In this case, we have 3 elements in our array:

echo "${#array[@]}"
3
We’ll learn a little more about working with arrays later in the week when we discuss wrapping our code into reusable chunks known as functions.

**Your task:**
Write a Bash script in which you:

Create an array called fruits which contains: pineapple, peach, raspberry, plum, apple and kiwi
Output the number of elements in the fruit array
Output the last element of the fruit array

**Solution**
````
nano fruits.sh
````

````
#!/usr/bin/env bash

array=("pinapple" "peach" "raspberry" "plum" "apple" "kiwi")

echo "There are ${#array[@]} fruits on the list."

echo "The fruits are ${array[@]}."

echo "The last fruit on the list is the ${array[5]} fruit"
````
To run script on terminal: ```bash array_fruits.sh```


### User Input
https://www.futurelearn.com/courses/linux-for-bioinformatics/3/steps/1339221  
Here are the scripts used in this video:
````
whoami.sh
````
```
#!/usr/bin/env bash
echo "Please enter your name."
read name
echo "Hello ${name}, it’s nice to meet you!"
```
```
food.sh
```
```
#!/usr/bin/env bash
echo "what are your two favourite foods?"
read food1 food2
echo "Your favourite foods are: ${food1} and ${food2}"
```
```
login.sh
```
```
#!/usr/bin/env bash
read -p "Enter your username: " username
read -sp "Tell me your password: " password
echo -e "\nHi ${username}, your password is ${password}"
```

### Passing Command Line Arguments to Bash Scripts  
A command line argument is a parameter that we can supply to our Bash script at execution. They allow a user to dynamically affect the actions your script will perform or the output it will generate.

To pass an argument to your Bash script, your just need to write it after the name of your script:

./fruit.sh my_argument
In our Bash script, there are several reserved/pre-defined variables which we can use to recall the user-defined parameters. The first argument is stored in $1, the second in $2, the third in $3…and so on. We cannot use $0 as that references your Bash script itself.

Let’s see how this works using an example script:
````
#!/usr/bin/env bash
 
echo "The first fruit is: $1"
echo "The second fruit is: $2"
echo "The third fruit is: $3"
````
If we run our script and don’t give an argument, we will see no output for our pre-defined variables:
````
./fruit.sh
The first fruit is:
The second fruit is:
The third fruit is:
````
Alternatively, if we provide three fruits, our script detects these and will return those values back to use via the pre-defined variables.
````
./fruit.sh apple pear orange
The first fruit is: apple
The second fruit is: pear
The third fruit is: orange
````
Sometimes, we may want to access all of the arguments. We can do this using $@.

Let’s update our example script to return all of the fruits provided as arguments to the script as well:
````
#!/usr/bin/env bash
 
echo "The first fruit is: $1"
echo "The second fruit is: $2"
echo "The third fruit is: $3"
echo "All fruits are: $@"
````
When we run our script, you can see that we now have an extra output which lists all of the fruits we gave to our script on the command line.

````
./fruit.sh apple pear orange
The first fruit is: apple
The second fruit is: pear
The third fruit is: orange
All fruits are: apple pear orange
````
Another example 
````
#!/usr/bin/env bash

echo "The first fruit is: $1"
echo "The second fruit is: $2"
echo "The third fruit is: $3"
echo "All fruits are: $@"
echo "In total, there are ${#@} fruits altogether."
````
Result: 
````
The first fruit is: apple
The second fruit is: pear
The third fruit is: orange
All fruits are: apple pear orange
In total, there are 3 fruits altogether.
````

### If and If Else Statements 
In this section, we’ll be looking at how to compare them to other variables or values and perform simple checks, like whether a file exists, using both conditional expressions and conditional statements.

**IF statements**
Conditional statements come in many forms. The most basic form essentially says: IF our conditions are met, THEN execute the following code.

We can write our if statements in several ways:
````
if [[ condition ]]
then
    	command
fi
````
So, if the expression within the square brackets returns true, then the code found between then and fi will be executed. If the expression returns false, the script will ignore (i.e. not execute) any code which lies between then and fi. Notice that we end our if statement with fi which is if spelt backwards.

An alternative format that you might come across uses a ‘;’ to allow then to be on the same line as the conditional expression:
````
if [[ condition ]] ; then
    	command
fi
````

You’ll notice that in these examples, we’ve used spacing to indicate the code which will run if the conditional expression returned true. This is known as indenting and, although there are no requirements for it in Bash, it is a good coding practice to follow for clean, readable code.

A simple example you can try on the command line yourself is:
````
if [[ 1 == 1 ]] ; then
    	echo hi
fi
````
Here we are saying, if 1 is equal to 1 (1 == 1) then return ‘hi’ back to us. As this conditional expression is always true (as 1 is 1) then, it will always return ‘hi’.

**IF statements with AND/OR logic**
We can use two (or more) conditional expressions with our if statement using the AND and/or OR conditions.

For example, let’s say that we have a file and we want to check that it exists, is readable and that it isn’t empty. If our file meets these criteria, we want to print “File is good” and if not, print “File is bad”.

First, let’s write our script:
````
#!/usr/bin/env bash
 
# Set the path for our file
file="file.txt"
 
# Check whether file exists, is readable and has data
if [[ -e ${file} ]] && [[ -r ${file} ]] && [[ -s ${file} ]]
then
    	# Execute this code if file meets those conditions
    	echo "File is good"
else
    	# Execute this code if file does not meet those conditions
    	echo "File is bad"
fi
````

Now, let’s run our script knowing that our file can’t meet the criteria as it doesn’t exist:
````
./script.sh

File is bad
````

Next, let’s create an empty file and try running our script again:
````
touch file.txt
./script.sh
````
Again, our script returns “File is bad” as it hasn’t met all of our conditions. Finally, let’s add some data to our file and try again:
````
echo "hi" > file.txt
./script.sh
````
Bingo! We have met all of the conditions and now our ````“File is good”````.

**IF..ELSE statements**
We can extend our conditional statement to have another clause by using an if..else statement. Here we are saying, IF our conditions are met, THEN execute the following commands. However, ELSE IF these conditions are not met, execute a different set of commands.

The syntax for this looks like:
````
if [[ condition ]]
then
    	command1
else
    	command2
fi
````

**IF..ELIF..ELSE statements**
Sometimes, you may need to test more than one statement. The syntax for this looks like:
````
if [[ condition1 ]]
then
    	command1
elif [[ condition2 ]]
then
    	command2
else
    	command3
fi
````
It’s worth mentioning that you can have more than one elif clause in your if..elif..else statement. But, as we will soon discuss, there are more efficient ways of building that type of conditional statement.

**An example:**
```
#!/usr/bin/env bash

temperature=$1

min_temperature=10

max_temperature=30

if [[ ${temperature} -gt ${max_temperature} ]]

then

echo "Too hot"

elif [[ ${temperature} -gt ${min_temperature} ]] && [[ ${temperature} -lt ${max_temperature} ]]

then

echo "Just right"

else

echo "Too cold"

fi
```


