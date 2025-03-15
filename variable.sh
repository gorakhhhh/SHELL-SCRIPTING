-What are Variables in Shell?
A variable in shell scripting is used to store data like text, numbers, or commands. It helps in making scripts dynamic and reusable.

1. How to Define a Variable?
You can assign a value to a variable using:
variable_name="Hello, Gorakh"

-No spaces before or after "="

-Use echo to print the value:
echo $variable_name

-Output:
Hello, Gorakh

2. Types of Variables:-
a) User-defined Variables
Created by the user in the script.
Example:
name="Gorakh"
echo "My name is $name"

-Output:
My name is Gorakh

b) System Variables (Predefined):-
These are set by the shell and usually in UPPERCASE.

Examples:

$HOME → Home directory
$USER → Current logged-in user
$PWD → Current working directory
$SHELL → Default shell


echo "Home Directory: $HOME"
echo "Current User: $USER"
echo "Current Directory: $PWD"

3. Read-Only Variables:-
-Use readonly to prevent modifications:

readonly my_var="Cannot change me"
my_var="New Value"  # This will give an error!


4. Special Variables:-
These are used for command-line arguments and process control:

$0 → Script name
$1, $2, ... → Arguments passed to the script
$# → Number of arguments
$@ → All arguments as a list


-Example script (test.sh):

#!/bin/bash
echo "Script Name: $0"
echo "First Argument: $1"
echo "All Arguments: $@"
echo "Number of Arguments: $#"

-Run:
bash test.sh Hello World

-Output:
Script Name: test.sh
First Argument: Hello
All Arguments: Hello World
Number of Arguments: 2


5. Using Command Output in Variables:-
You can store the output of a command using backticks (``) or $(...):

current_date=$(date)
echo "Today's date is: $current_date"


6. Unset (Delete) a Variable
Use unset to remove a variable:

my_var="Hello"
unset my_var
echo $my_var  # This will print nothing
