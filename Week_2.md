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


### Conditional expressions
### Switch Case Statements
### Exercise and discuss
For this exercise you will need to download the Diamonds.csv file. This file is part of the data that you downloaded in week 1 Step 1.6 of this course. Please note the data file is in Week 1 folder.

Here is an excerpt from the Diamonds.csv file you’ll be parsing in this exercise.

excerpt from the diamonds.csv file----pick

For this exercise, what we’d like you to do is create an interactive Bash script called diamonds.sh.

First, prompt the user to provide a cut and store their response in a variable called quality.

If the user enters either Fair or Good, return Insufficient quality to proceed.

If the user enters a value other than Premium, Ideal or Very Good, return Invalid cut.

Otherwise, count the number of diamonds (rows) which have the user-defined cut. Hint: look at the usage for grep to find an option that will count the number of lines which match a given pattern.

#### Solution:
````
#!/usr/bin/env bash
# Store the first command line argument as a variable
read -p "Please enter a diamond cut: " quality
# If quality is Fair or Good – return insufficient quality
if [[ ${quality} == "Fair" ]] || [[ ${quality} == "Good" ]]
then
 echo "Insufficient quality to proceed"
elif [[ ${quality} != "Ideal" ]] && [[ ${quality} != "Very Good" ]] && [[ ${quality} != "Premium"
]]
then
 # If the cut is not a valid value
 echo "Invalid cut"
else
 # Using the -c option from grep to count
 grep -c "${quality}" Diamonds.csv
fi
````
Let's check each of the conditions.  
(1) If a user enters Fair or Good, return Insufficient quality to proceed.
```
./diamonds.sh
Please enter a diamond cut: Fair
Insufficient quality to proceed
```
Next, let's check that if we enter a value other than Premium, Ideal or Very Good, the script returns Invalid cut.
````
./diamonds.sh
Please enter a diamond cut: Blargh
Invalid cut
````

Finally, let's see how many diamonds there are which are a Premium cut
````
./diamonds.sh
Please enter a diamond cut: Premium
13791
````

### Practice Bash Syntax
1.- Which of these is the correct syntax for an if statement? 
do 
**then** 
esac 
elf 
2.- Which of the following is the correct conditional syntax? 
elsif 
**elif** 
elseif 
ifelse 
3.- Which of these variables holds the first command line argument? 
$0 
**$1** 
$-1 
$@ 


## Control flow in bash and Bash functions
### For Loops

What is a loop? A loop is a construct which allows you to repeatedly execute the same commands. We will be discussing three types of loops: for loops, while loops and until loops. 
Let’s start by looking at for loops. The basic syntax for a for loop is:
```
for variable in ${list}
do
    	# Execute some commands
done
```
We can define a list like so:
```
my_list="item1 item2 item3"
```
As a simple example, let’s create a list of fruits and use a for loop to return each item from our list:
```
fruits="apples pears oranges"
for fruit in ${fruits}
do
    	echo ${fruit}
done
```
This will output:
```
apples
pears
oranges
```
We can also use a for loop to iterate over a series of numbers. In this example, we’ll process the numbers 1 – 3 using a sequence expression. Here, you’ll see the range is specified by a beginning number (1) and an ending number (3) separated by ‘..’. This indicates that we want the sequence of numbers from the beginning to the ending number inclusive i.e. 1, 2 and 3.
```
for n in {1..3}
do
    	echo ${n}
done
```
This will output:
```
1
2
3
```
A common use of for loops is to iterate over the contents of a directory. Here is an example of how to list all files in the current directory:
```
for file in *
do
    	echo ${file}
done
```
Here we use ‘*’ as a wildcard to ask for all files and directories. We could extend this to look text files:
```
for file in *.txt
do
    	echo ${file}
done
```
This would return only those files that have a .txt file extension. 

Finally, we’ll introduce you to the for loop syntax that uses three expressions: an initial value, a terminal value and an increment/decrement. Notice here that the increment uses the ‘++’ notation which simply means add 1.
```
for (( i=1; i<=3; i++ ))
do
    	echo $i
done
```
This example returns the same output as our earlier number series.
```
1
2
3
```
##### Exercise:
Create a for loop which iterates from 1 to 5 in increments of 1. If the value is 2 return “fizz” otherwise, return “buzz”.
##### Solution:
```
#!/usr/bin/env bash

for (( i=1; i<=5; i++ ))
do
echo $i
if [[ $i -eq 2 ]]; then
echo "fizz"
else
echo "buzz"
fi
done
```

```
for (( i=1; i<=5; i++ ))
do
 if [[ $i -ne 2 ]]
 then
 echo "buzz"
 else
 echo "fizz"
 fi
done
```

```
#The trick here is to remember that because we are comparing a number, we need to use -eq or -ne in our condition.
for (( i=1; i<=5; i++ ))
do
 if [[ $i -eq 2 ]]
 then
 echo "fizz"
 else
 echo "buzz"
 fi
done
```

#### While Loop and Until Loop

Both for loops and while loops are very similar. Typically, we use for loops where we know exactly how many iterations we need – i.e. they have a definitive start and end point. On the other hand, while loops are used where we don’t know the limitations on tasks such as read in a file or asking a user for input. They just keep iterating as long as the specified condition has been met. 

The basic syntax for a while loop looks like this: 
```
while [condition]
do
    	# Commands to run
done
```
First, let’s look at how not to do a while loop: 
```
i=1
while [[ $i -eq 1 ]]
do
    	echo "hi"
done
```
This is what’s known as an infinite loop because the condition will always return true – i.e. nothing is changing. In this example, “hi” will just keep being printed to the terminal until we force it to stop using Ctrl+C on our keyboard. 

So, that was how to use while loops in the wrong way. But, what do they look like when they are being used properly: 
```
i=1
while [[ $i -le 3 ]]
do
   echo "$i"
   (( i++ ))
done
```
What we’re doing here is setting our variable to have an initial value of 1. When the loop begins, our variable is 1 (i.e. less than 3) and so the condition returns true. That means that we’re going to execute the code body, returning our variable value, 1 to the terminal. Next, we increment our variable value from 1 to 2 using the ++ notation. This continues while our variable has a value less than or equal to 3. 

The result: 
```
1
2
3
```
Another common use for while loops is reading in the contents of a file. Here is an example: 
```
while read data
do
   echo "${data}"
done < infile.txt
```
This is what is known as a while loop. What do we mean by this? In this example, the while loop will only keep iterating while there are lines to be read from the given input file. Here, infile.txt is the name of the file that we are going to be looping over. The read command will process the file, line by line, into the data variable. Once it reaches the end of the file, the while loop will be terminated. 

#### Until loop 
We just looked at an example of a while loop. Now, we’re going to look at run-until loops. The main difference is that while loops are designed to run while a condition is satisfied and then terminate once that condition returns false. On the other hand, until loops are designed to run while the condition returns false and only terminate when the condition returns true. 

The structure of until loops is almost identical to that of a while loop: 
```
until [condition]
do
    	# Commands to run
done
```
For example, this loop would run until the variable is greater than 3:
```
i=1
until [[ $i -gt 3 ]]
do
    	echo $i
    	((i++))
done
```
This would output:
```
1
2
3
```

#### Bash Functions
When you’re writing Bash scripts, you’ll often find that there are repetitive tasks. Instead of copying and pasting the same code to multiple places in your scripts, try using a function. 

Functions are a great way of producing reusable code! They are essentially a set of commands that can be called as many times as you need in your script. What’s even better is that functions are not unique to Bash, they’re a core component of many other programming languages too. 

Bash function syntax is pretty straightforward. We start off by defining the function name, followed by parentheses. The commands that we want to execute are found between the curly brackets and are known as the body of the function. 

```
function my_function() {
    	#some code
}
```
There is an alternative syntax where you don’t have to prefix that first line with function:
```
my_function() {
    	#some code
}
```
However, it is much easier to pick out our functions if we use the previous syntax. It’s also a good idea to make sure that the names of your functions are relative and descriptive so that you can quickly see what they’re going to do. 

When we define a function, we are not executing it. Let’s use a simple toy example to demonstrate where we are using a function to return “Hello world” back to the terminal. We’ll call our function say_hello. You can see that we don’t execute the code in the function body until we specifically call (or execute) the function with say_hello. 
```
#!/usr/bin/env bash
 
# Define a function to print "hello world"
function say_hello() {
    	echo "Hello world"
}
 
# Execute the say_hello function
say_hello
```
This would output:
```
Hello world
```
We can adapt out function to take arguments using reserved variables. To access the first argument given to the function, we use the variable $1. Let’s tweak our script to use an argument, our name, that is provided to our say_hello function. 
```
#!/usr/bin/env bash
 
# Define a function to print "hello world"
function say_hello() {
    	echo "Hello $1"
}
 
# Execute the say_hello function
say_hello "Victoria"
```
This would output:
```
Hello Victoria
```
Functions are one of the best ways to produce scalable and readable code. One general rule of thumb is not to make your functions too big. You can call a function within a function, so, break each function down into small, clear tasks. 

##### Exercise 
Create a function called file_exists taking the first argument (a filename) which it uses to see if the file exists. If it doesn’t, return “File does not exist: “, followed by the filename. 

Note: you can use the “!” notation when you want to check a negative. 

If file exists: 

if [[ -e $1 ]] 

If file does not exist: 

if [[ ! -e $1 ]] 

##### Solution

An example Bash script to solve this would be: 
```
#!/usr/bin/env bash
file="no_file.txt"
function file_exists() {
 if [[ ! -e $1 ]]
 then
 echo "File does not exist: $1"
 fi
}
file_exists "${file}"
# Notice that we are checking to see that a file doesn't exist, not that it does.
# if [[ ! -e $1 ]]
```
Another solution: 
```
nano check.sh

#!/usr/bin/env bash

file=$1

function is_this_real(){

if [[ -e $1 ]]

then echo "It's real"

else echo "It's not real"

fi

}

is_this_real ${file}
```
EXIT NANO
```
chmod +x check.sh
```
```
./check.sh fruit.txt
```

### Writing Bash scripts - Good practices 
#### Track the Progress of Your Script and Redirect Script Outputs and Errors 
**Tracking the progress of your script** 
Now, let us imagine you have a long and complex Bash script. You execute your script, it’s started running and you’ve gone off to make a cup of tea. Ten minutes later, you come back to check on its progress but, how do you know what’s going on and where you’ve gotten up to in your script? 

There are many different ways in which we can track the progress of our scripts. The simplest is to break your script down into sections and output a progress statement when you start and/or finish each section. 

For example, let’s set our name as a variable and count the number of characters it contains. 
```
#!/usr/bin/env bash
 
# Set your name as a variable
name="Victoria"
 
echo "Counting number of characters in name"
printf -- "${name}" | wc -m
```
As expected, we have our progress statement and the number of characters in our name:
```
Counting number of characters in name
            8
```
Now, while this may seem excessive given the simple example, it’s clear that once we start to build up our scripts, adding progress statements will be invaluable. Particularly when were discussing loops this week, where it’s possible for your scripts to get stuck in an infinite loop, failing to exit. In those situations, progress statements are absolutely essential for debugging! 
**Redirecting script outputs and errors** 
Despite your hardest efforts, sometimes your Bash scripts will do unexpected things. This is when we need to debug. If you have a long Bash script, it can be tricky to work out where things went wrong. 

To help with debugging, we can output progress statements at key points in our code e.g. “Reading in file: x”. However, these can easily fill up your terminal and become difficult to follow. A simple solution is to write these progress statements to one or more log files. 

**Redirecting the output of scripts and commands to files** 
Simply put, redirection is the mechanism by which we can send the output of a command or script to another place. When we want to capture the output from a command or script, we usually choose to redirect those outputs into a file.  

To redirect the outputs of a script, we can use the > symbol: 
```
script.sh > output.txt
```
Redirection using the > symbol works not only for scripts, but any Bash command:
```
echo "hello world" > hello.txt
cat hello.txt
hello world
```

**Linux streams and file descriptors** 
Before we take an in depth look at how we redirect our outputs and errors to log files, we first need a crash course in Linux streams and file descriptors. These streams are handled like files – i.e. you can read from them and you can write to them. 

There are three streams you should be aware of: 
 
stdin (standard input) 
stdout (standard output)  
stderr (standard error) 

This sounds much more complicated than it really is. In a nutshell, stdout refers to the output from a command and stderr refers to the errors a command generates. The final stream, stdin refers to command line inputs which we’ll cover later in the week. 

Next, we need to understand file descriptors. A file descriptor is just a (positive) integer that represents an open file. Each of our Linux streams (i.e. stdin, stdout and stderr) has been allocated a unique number in order to identify them. 

All you need to remember is which of the ids below corresponds to each of the streams: 

0 => stdin 
 
1 => stdout 
 
2 => stderr 
 
**I/O redirection** 
To start understanding how these streams work, let’s look at redirecting the output from a script into a single file. 
 
Example script: 
```
#!/usr/bin/env bash
 
# A script that tries to change directory
 
echo "Changing to a directory that doesn't exist"
cd foo
```
As you can see, our script returns the printed progress statement and an error that tells us that the directory we’re trying to migrate to doesn’t exist on our filesystem. 
```
./script.sh
Changing to a directory that doesn't exist
script.sh: line 6: cd: foo: No such file or directory
```
These two messages are being delivered to the terminal by two different Linux streams. The first message, our progress statement, is delivered via stdout. Meanwhile, the error message is delivered via stderr. 

Now, let’s see what happens when we try to redirect the outputs from that script into a file called output.txt: 
```
./script.sh > output.txt
./script.sh: line 6: cd: foo: No such file or directory
```
OK, so, we can see that the stdout has been redirected to our output file but, the error is still being displayed.
```
cat output.txt
Changing to a directory that doesn't exist
```
Why is this? Well, when we use > to redirect to a file, by default, the system will only redirect the stdout. 

But, what about our errors being delivered via stderr, how can we capture those? 

To simplify things, let’s first look at how to redirect stdout and stderr to two different files. We’ll use the > symbol with our file descriptors (1 for stdout and 2 for stderr) to redirect our outputs to output.txt and our errors to error.txt respectively.  
```
./script.sh 1>output.txt 2>error.txt
```
This command returns nothing back to our terminal. Using the cat command, we can see that, as expected, our outputs and errors have been written to output.txt and error.txt respectively. 
 
Our stdout (progress statement returned using echo): ```cat output.txt Changing to a directory that doesn’t exist ```

And our stderr (errors):
```
cat error.txt
./script.sh: line 6: cd: foo: No such file or directory
```
In order to redirect the stdout and the stderr to the same place, we need to use a new term: 2>&1. When we use this, we redirect using the same syntax as before, but add 2>&1 to the end of our command. 

This is how it works in practice: 
```
./script.sh > combined_output.txt 2>&1
```
Now, if we look at our combined output file, we can see that we’ve captured both the stdout and the stderr. 
```
cat combined_output.txt
Changing to a directory that doesn't exist
./script.sh: line 6: cd: foo: No such file or directory
```

#### Writing Robust Bash Scripts

Sometimes, despite having the very best intentions, subtle issues can creep into your script causing it to fail with unintended consequences. Fortunately, there are commands available to help with minimising these issues. One of these is the set command. 

Let’s take a look at how the set command can help us write robust and secure Bash scripts. 

First, how does the set command work? Using the set command allows us to customise the environment in which our scripts are run. 

The general syntax for the set command is: 
 
```set [options]```
There are more than a dozen options available for the set command. To view them, you can run the following command: 

```help set``` 
In this article, we’ll be focusing on the most commonly used options. 

**Using set -e to catch errors** 
Sometimes, commands within your script may fail but, the downstream commands will continue to run. This can be extremely frustrating if you don’t see the error and assume that, as the script completed, everything has worked as expected. 

Here’s an example. First, we will try to change into a directory called foo and then list the contents of that foo directory. The key here is that the foo directory doesn’t actually exist so, we can’t get its contents. 
```
#!/usr/bin/env bash
 
cd foo
ls
``` 
What happens when we run our script? 
```
script.sh: line 3: cd: foo: No such file or directory 
File1 File2
```
Notice that our script generated an error when the system couldn’t find our foo directory. But, because there wasn’t an exit code, the remaining commands in the script also ran. Unfortunately, this listed the contents of our current working directory and not the foo directory as intended. Imagine if this was part of a long series of output commands and we missed the error….we may accidentally assume that our script ran correctly! 

Fortunately, the set -e command comes to our rescue by ensuring that the script will fail whenever an error occurs, no matter the exit code. Try adding set -e to the top of your script: 
```
#!/usr/bin/env bash
 
set -e
 
cd foo
ls
```
Bingo! This time, we can see that the script terminates as soon as it reaches the first error.
```
script.sh: line 5: cd:foo: No such file or directory
```
**Using set -u to catch variables that don’t exist** 
By default, when executing a script, Bash will just ignore variables which don’t exist. In most cases, you won’t want this behaviour as it can have unexpected consequences! 

In this example, we will first try to output a variable, $foo, which doesn’t exist and then try to output a simple string, bar. 
```
#!/usr/bin/env bash
 
echo $foo
echo bar
``` 
When we run this script, we get the following output: 
```
bar
```
Notice that the system outputs a blank line for echo $foo. This is because Bash is ignoring $foo as it doesn’t exist. 

If we want the script to exit with an error instead of continuing on silently, we can add the set -u command at the top of our script. 
```
#!/usr/bin/env bash
 
set -u
 
echo $foo
echo bar
```
This will result in our script exiting with the following error: 
```
script.sh: line 6:foo: unbound variable
```
Notice, our script terminates before running the second echo command. 

**Displaying executed commands while script is running with set -x** 
Another default Bash behaviour is to only display results once a script has finished. This can be especially frustrating when you need to debug scripts that take a long time to run. 

Let’s take an example script that outputs two simple strings, foo and bar. 
```
#!/usr/bin/env bash
 
echo foo
echo bar
```
The output from this script would be:
```
foo
bar
```
Now, what if we want to know which command is producing each of the results? To find this out, we can use the set -x command which outputs the executed command before printing the command result. 
```
#!/usr/bin/env bash
 
set -x
 
echo foo
echo bar
```
Running this script would give the following output: 
```
+ echo foo
foo
+ echo bar
bar
```
As you can see, before executing each of the echo commands, the script first prints the command to the terminal, using a + to indicate that the output is a command. This can be especially handy when you want to debug long scripts.

**Combining set options in a single command** 
Most of the time, you will want to use all of these options together. Instead of writing the commands out, one command per line, we can combine the options into a single command: 
```
set -eux
```
Using the set command is essential to building robust Bash scripts. Not only is it part of good scripting practices but, will also save you a lot of time and frustration! 

#### Good Practices
**For the most part, it’s easy to write Bash scripts. What’s really tricky is writing good Bash scripts.** 

What do we mean by this? In short, we mean writing “clean code”. Clean code is: 

- Easy for someone to pick up and understand
- Reusable
- Scalable
- Expects the unexpected

There will always be situations where you write a script for a one-time only task. In these situations, people tend to cut corners and become more flexible with making a script scalable or reusable. It’s tempting, it is, we’ve all been there. But…inevitably, you’ll almost always need to do the same or similar task unexpectedly in the future. It takes time to write good code in all situations, but, I promise, it’s always worth it in the long run! 

Here we’ve put together a simple list of 12 good practices which you can try to follow. This is by no means an exhaustive list and I encourage you to read more widely and continually assess and develop your scripting practices. 

1. **Plan ahead** 
Most of your scripting headaches will be solved by planning ahead. Think about what you want your script to do and expect the unexpected. This means not only thinking about the “happy path” where everything proceeds as you expect it to, but also the exceptions. For example, what should it do if the file its processing is empty or doesn’t exist? 

2. **Build your script in small steps** 

Depending on the complexity of the task you’re trying to accomplish, your script may be very small or somewhat larger. Now, even for the most experienced of script writers, there can be a typo or other error in their first attempt. To avoid this, no matter the scale of your script, build it up in small stages and test as you go. 

3. **Scale up slowly** 

We don’t just need to consider building the process up step by step, but also the size of the data the script is handling. A simple rule of thumb is to get your script working for a single task first. Then, build up slowly until you reach the full scale of your dataset i.e. handle one file, then 10, then 100… This allows you to predict the resources you need to process the full dataset and get a rough idea of how long this process will take. 

4. **Comment, comment, comment** 

OK, I could start by saying that you can never have too many comments in a script. But, that’s not true, at some point you won’t be able to see the wood for the trees and your script will become unnecessarily bloated. There is no hard and fast rule on how many comments you should have in your scripts, it just comes down to common sense. Simply, make sure that you have enough information so that if someone, usually you, picks your script up in 6 months that they know what it does and have a rough idea of how it does it. This isn’t just true for shell scripting, but for almost every other type of programmatic scripting you may encounter. 

5. **Don’t prolong the life of the script unnecessarily** 

This is called script longevity and links back to expecting the unexpected. Earlier in the week we looked at using the set command to handle failures and errors. A script should never fall over quietly. Trigger an exit signal when the unexpected happens. This means that a script should exit on the first error and not blithely continue running unnecessarily or fall over without you realising it. 

6. **Keep on top of variable management** 

There are a lot of things to consider for variable management. First up is syntax. I like to use upper case for environment variables and lower case for local variables. 
```
MY_ENVIRONMENT_VARIABLE=1
my_local_variable=2
```
Depending on your preference you can use underscores or camel case. I prefer underscores as it keeps things consistent between variable types. But that’s up to you. 
```
my_underscore_example=1
myCamelCaseExample=2
```
Variable names should be meaningful – i.e. you should know straight away what they are referring to. And, as mentioned earlier in the week, use double quotes and curly braces to avoid issues with whitespace and wildcards in the variable value. 

7. **Prevent code bloat by using functions** 

Quite often you will want to repeat the same process multiple times within a script. We could just copy and paste the code, amending it to our needs. This is inefficient and will make for a longer script. Instead, we can wrap the code in a function so that the code we want to run is only located once in our script and is referenced using a function call anywhere it is needed. Like variables, functions should be meaningfully named. They should be small, only performing a limited, clear task. 

8. **Don’t duplicate scripts** 

It can be very tempting to put paths to data directly into your scripts. Then, when you come to use the script on the new dataset, copy the script, save it under a new name and update the dataset location to point at the new data. Please don’t do this. It’s worth investing the time in making your scripts reusable and scalable by using arguments and avoiding hard coded paths. 

[!](https://imgs.xkcd.com/comics/documents.png)
Source: https://imgs.xkcd.com/comics/documents.png  
cartoon depicting one person at the computer and another looking at that Pearson's screen over her/his shoulder saying oh my god, with a tip: never look at somebody else's computer  


9. **Keep debugging simple**  

Scripts will fail, it’s inevitable. We’ve already mentioned expecting the unexpected, but what should you do when the unexpected actually happens? How do you know at what point your script failed? This is where logging comes in – print everything your script is doing back to the system. That way, when it fails, you know at which point it stopped working and will have a much easier time debugging the code. 

10. **Clean up after yourself** 

This is simple. If you generate intermediate or temporary files, make sure that you remove them when you’ve finished with them. This should be built into the script itself and not done an afterthought once it’s run. 

11. **Make your code easy to read** 

Digestible code is always easier to work with and maintain. To quote Martin Fowler: “Any fool can write code that a computer can understand. Good programmers write code that humans can understand.”. To help, you can use linters to look over your scripts and give feedback on their readability/formatting. One of the widely used online tools for Bash script linting is https://www.shellcheck.net/. 

12. **Don’t walk away from new scripts** 

It’s oh so tempting to hit “go”, set your nice, shiny new script running…then go off and make a cup of tea. Don’t. Sit back down and make sure it runs OK for the first couple of times. Why the first couple and not just the first time I hear you ask? Because, it will inevitably be the third or fourth time you run the script that it will fail in a spectacularly dramatic fashion. I like a cup of tea as much as the next person but, please, make it before you start running your script! 

**Most of important of all, don’t be afraid to ask for help!** 

#### Final Exercise - Use Bash Scripting to Parse Biological Data 

In this exercise we’re going to look at using Bash scripts to parse biological data. We’ll walk you through and explain the commands for parsing a single data file. Then, it will be up to you to write a Bash script to process all of the example data files. 

**Example dataset** 
The example files contain a subset of data from the 1000 Genomes project (https://www.internationalgenome.org/). Don’t worry if you don’t have a biological background. We’re not going to delve into the formats here. The aim of this exercise is simply to run a program across three example data files to get the number of records it contains using the skills you’ve been developing in Week 1 and Week2. 

You should now have three data files: 

- sample_10000_11000.bam 

- sample_11000_12000.bam 

- sample_12000_13000.bam 

If you would like to know how we generated this subset of the full data, you can download the Bash script from the same link above. We’ve put comments in the script to help you follow along.  

Each line in our sample data files is a biological unit of data known as an alignment. All we want to know is how many records (alignments) are in each of the data files. 

But, the catch here is that these files are not in a human readable format. This means we need to use a program, like samtools, to process them if we want to know the number of records (alignments) each file contains. 

Counting the number of alignments (amount of data) in a single file 

In Week 1, we looked at how to install a widely used piece of software called samtools (https://github.com/samtools/samtools) - a suite of tools which can be used to process biological sequence data. For today’s example we are going to use one of those tools, samtools view, to get a summary of the data in our sample files. 

Run the following command to get the usage (manual) for this tool: 
```
samtools view
```
> in MacOs there was a problem with the installation, but when we need Samtools it's necessary to put in the terminal **conda activate samtools**

Here in the usage, we find the option, -c, which can tell us the number of records (alignments) in our data file.
```
Usage: samtools view [options] || [region ...]

Options:

  -b   	output BAM
  -C   	output CRAM (requires -T)
  -1   	use fast BAM compression (implies -b)
  -u   	uncompressed BAM output (implies -b)
  -h   	include header in SAM output
  -H   	print SAM header only (no alignments)
  -c   	print only the count of matching records
  ```
From that usage, we can see the command syntax is: 
```
samtools view [options] <filename>
```
So, to get the number of records (alignments) in our first file (sample_10000_11000.bam), we would run the following command: 
```
samtools view -c sample_10000_11000.bam
```
This will return the number of records (alignments):
```
1947
```
We can store the output of a command as a variable using the following syntax:
```
variable=$(command)
```

So, for our example command this would be: 
```
alignments=$(samtools view -c sample_10000_11000.bam)
```
Now, if we echo our variable, you will see it has the expected value: 
```
echo ${alignments}
1947
```
**Excercise:** 

Using a Bash script, get the number of records for each of the three example data files. 

Some hints: 

- Use comments
- Use the set command
- Check whether each file is empty before running samtools
- Use a loop – i.e. don’t run three samtools commands with hardcoded filenames, use wildcards (e.g. sample*.bam where * matches any string)
- Return the filename and the number of records back to the user 

**Solution:** 
```bash
#!/usr/bin/env bash
set -eu
# Use a for loop to iterate
for filename in sample*.bam;
do
  # Useful message so we know where we're up to
  echo "Processing: ${filename}"
  # Count the number of records using samtools view
  # Store the output from that command into a variable
  alignments=$(samtools view -c "${filename}")
  # Return the filename and the number of records back to the user
  echo "Number of alignments in ${filename}: ${alignments}";
done
```

#### Summary and Help area for Week 2 
In Week 2, we built on the commands you learnt in Week 1 and introduced you to bash scripting. As the week progressed, we looked at why using bash scripts is such a powerful means of automating repetitive commands. 

We’ walked you through writing your very own first bash script to print “Hello World”, and from there, you read about basic bash syntax in the form of variables, conditional logic and functions. Most importantly, you started to put your individual commands together to form simple bash scripts. 

You also heard some advice from a professional bioinformatician. You had an opportunity to see how Samtools, you installed in week 1 can be used in practice. 
