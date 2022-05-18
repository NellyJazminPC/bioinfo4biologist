# Bioinformatics for Biologists (futurelearn.com)

In Week 1 of the course, we will introduce you to Linux and explain why it is widely used in bioinformatics. We will talk about the Linux command line and explain the directory structure of the file system. Some essential Linux commands will demonstrate how to access, manipulate and edit text files. The concept of environment variables will be introduced, and we will also demonstrate how to install a piece of widely used bioinformatics software. In addition, we’re going to talk to a biologist who has found their work transformed by using command line Linux.

In Week 2, we’ll build on the commands you learnt in Week 1 and introduce you to bash scripting. As the week progresses, we’ll look at why using bash scripts is such a powerful means of automating repetitive commands. We’ll walk you through writing your very own first bash script and from there, you’ll learn about basic bash syntax in the form of variables, conditional logic and functions. And, most importantly, you’ll start to put your individual commands together to form simple bash scripts. You will also hear some advice from a professional bioinformatician. In the final exercise you will have an opportunity to write a script to parse biological data.

After you see how to handle and analyse your data using the command-line in Week 1, and how to write and run bash scripts to automate that handling during Week 2, in Week 3 you will see how you can analyse and visually represent your data using R and RStudio. We will first review together the key concepts and basics of using the R language. You will learn how to manipulate lists, vectors or dataframes, and how to read and interrogate data from files to create simple plots under R. We will then see how RStudio can simplify these processes, and you will learn how to work under RStudio to easily create simple or more complex plots using packages specifically designed for that purpose.


# Weak 1
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



**How to use uniq**


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














