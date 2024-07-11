## 1.- Which of these commands would you use to count the number of lines containing a word or phrase?  
 - grep -c  

## 2.- Which command would you use to extract the first column from a file? 

- awk 

## 3.- If you have a script file called “myscript.sh” in your home directory and it is executable, which of the following commands can be used to execute (run) your script?  

- ./myscript.sh
- ~/myscript.sh
- bash ~/myscript.sh
- ~all of the above~

## 4.- Which of these is the correct way to access the first element in an array? 

- ~$array[0]~


## 5.- Given this Bash array: 

```R
fruits=( “pineapple” “peach” “raspberry” “plum” “apple” “kiwi”)
```
What would the following command return ```echo "${#fruits[@]}"```

- ~6~

## 6.- Which variable names are valid names in R? 

- test.data
- TestData
- 5TestData
- ~_test.data~
- ~_testData~


## 7.- Which of the following proposals correspond to ggplot2 layers in its grammar of graphics?  

- ~themes~
- ~scales~
- ~aesthetics~
- viridis
- scatterplot


## 8.- Let’s consider the following command to generate a plot using ggplot2: 
```R
> ggplot(data = iris, aes(x = Sepal.Length, 
y = Petal.Length, , color = Sepal.Length, 
size = Sepal.Length)) + geom_point()
```

- What additional function could allow you to show Species in individual plots as a function of Species, and allowing to customise the y-axis to fit the data?  

- 
```R 
+facet_wrap(~Species, scale='free_y')
```

```R 
+facet_wrap(~Species) + geom_scale('free_y')
```

```R 
+facet_wrap(~Species) + geom_scale(free_y)
```
