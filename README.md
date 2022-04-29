# Bioinformatics for Biologists (futurelearn.com)
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
