
**BASH SHELL SCRIPTING** 

Linux commands ( mkdir ,pwd , rmdir , touch ,echo  )


(series / number  of linux commands in a file written in a specific format (syntax) )

`Bash shell scripting` is the process of writing a series of commands in a file ( a script) using what we call a shell language , so they can be executed (run) as a program . Bash shell scripts are commonly used to automate task in Linux and Unix-like operating systems for example tasks like Backups , software installations (package management ) , file management , system monitoring 



`What is Bash` ? - Bash simply means `Bourne Again Shell` : This is one of the most popular command line interpreter (shell) used in linux & unix systems

Take note of the following : 

+ Bash is both a `shell (interpreter )` and a `scripting language` or `programming language` 
+ It allows users to interact with operating system using scripts or typing commands 
+ Its default shell on most Linux distributions and MacOS 


`What is a Shell` ? A shell is a program that acts as an interface or intermediary between the user and the operating system. When a user writes a command the shell interprets and sends it to the operating system to execute . 

A shell can be 
+ a shell can be interactive , you can type commands directly to your shell 
+ it can also be non - interactive through scripts 

`What is scripting` ? This is a number or series of commands in a textfile written in a specific format known as syntax which can run and carry out task automatically 

Take note 

+ A script is like a mini program ()
+ A script has instructions which needs to be executed in sequential form or sequence e.g top to bottom 
+ scripts needs to be executable to be able to automate tasks
+ scripts ends with the file extension called  .sh 


**What is the importance of Bash Shell or shell scripting** 

+ `Automation of repeatitive task` : it saves alot of time by automating repeated tasks like backups , deployments , user management , package management 

+ `Efficiency` : it can excute multiple commands in sequence without any user interaction , making the process faster and effficient

+ `Task Scheduling` : you can schedule scripts to run at specific times or intervals using tools like cron jobs , this is useful for regular maintenance tasks

+ `Consistency` , Task with scripts ensures that the perform the same all the time . it reduces human errors and increases reliability

+ `Flexible` : it can be used to carry any kind of task from simple to complex task

+ `Portability` : Bash scripts can run on any system that has a compatible `shell` , making them portable across different environments

+ `It supports version control ` : when changes are made to scripts you can keep previous versions especially when managing them using tools  like git and github 

+ `It can be used for system administration` : you can use bash scripts to manage system resources , monitor performance , and perform routine maintenance tasks

+ `You can integrate your scripts with other CI/CD pipelines using tools like github action , jenkins 


IDE ( Integrated Development Environment ) VSCODE 


WINDOWS :  Powershell , git bash , Command Prompt , WSL (Ubuntu , debian etc )


Programming languages

+ Java ---> Buid software applications 
+ Pyton --> build software app & automation 
+ c++  --> Buid software applications 
+ javascript  
+ php 
+ react 


**What makes a bash shell script different from other programming languages**


+ Syntax (format)
+ Script execution (run the script) e.g bash <scriptname> or sh <scriptname>
+ Different file extensions `.sh` while a python script ends with `.py`
+ Bash shell is used for automation and good for automating processes within the linux ecosystem while python is good for general automation or application logic 



**What are some of the Shells we need to know ?**

1. `Bash (Bourne Again Shell  )`

+ Most popular shell in Linux and macOS
+ Default in most Linux distributions
+ Supports scripting, automation, command history, tab completion, etc.
+ Extension: .sh or .bash

2. `sh (Bourne Shell)`

+ This was the original Unix Shell Developed by Stephen Bourne .This has less features when compared to Modern shells for example Bourne Again Shell.

3.  `zsh (Z Shell)`
+ Powerful, modern shell with extra features like (Auto-correction,Themes (via Oh My Zsh) , Plugin system   )

4. `ksh (KornShell)` : David Korn developed the korn shell . At&T Bell Labrobartory . it has features C-shell and the born shell
+ Combines features of `sh and C Shell`
+ It has advanced scripting features ,floating point arithematics , associative arrays
+ Better scripting than sh, but less used today

5. `csh (C shell)` : 
+ Syntax similar to C programming language
+ tcsh is an enhanced version of csh
+ It was developed by Bill Joy at University Of California
+ It has advanced features for interactive use and it has features c-like syntax , history mechanism , job control .
+ Less commonly used today

6.  `fish (Friendly Interactive SHell)`
+ User-friendly shell with:  ( Syntax highlighting , Smart suggestions , No scripting compatibility with Bash) 

**shell for windows**

+ PowerShell (Windows Shell)
+ Command Prompt 
+ Git bash ( when when git is installed)




**Best Practise of writing a Bash Shell Script**

1. `Always start with a shebang` `#!/bin/bash`

+ Tells the system which interpreter to use.
e,g Use `/bin/bash` for Bash (not /bin/sh which may be linked to dash or sh).

2. `Ensure your scripts have comments` 

+ Comments thats explains logics 
+ Comments for instructions e.g run this script only in development , run this script if only if you have sudo etc 
+ Comments that explains what the script will do . 

Note : There are different types of comments e.g - `single line comment 0r a Multi Line Comment `

e.g of a comment will be something like 

#this script will start and stop instances in aws . 



3. `Do not hardcode but instead use config files or variables` : When you hardcode it does not make your script dynamic 


4. `Ensure your script has good error handling` "echo " this will output or show you what steps are being executed in your scripts . This helps to debug and show where the script had an error .


5. `Ensure you handle sensitive data accurately (env) -s ( passwords , tokens ,ssh keys)`

6. write your scripts in Modules , its easy to read , reuse use more functions

7. Always Test your scripts in a controlled environment before using them in Production .

8. Use good naming conventions ( naming your scripts with good names ) , name variables with good names or meaningful names

Other best practises 

+ Use Meaningful Variable Names
+ Quote Your Variables e.g echo "$file_path"
+ Use Functions to Organize Code
+ Validate Input and Arguments
+ Use Loops and Conditionals Wisely
+ Log Output and Errors
+ Sanitize User Input



What makes a bash shell script different from other scripting languages ? 

+ `Syntax ( format )`

**SYNTAX IN BASH SHELL (Bash Programming Language)**


1. `Shebang` 
#!/bin/bash

2. Comments ( single line comment and multi comment ) 
note comments are not going to be excuted or run by the script . comments are ignored 

# This is a comment 


3.` Variables`  ( `User define variable or System Variables` )

This is a method of storing information or Data that you will use in your bash shell script : user define variables or environmental variables or system variables 

`Example of a Syntax defining a variable` 


name="calson"
company="team4techsolutions"
occupation="DevOps and Cloud Engineer"
Location="Toronto"
Country="Canada"

Note: To call or reference a variable in your code you will have to use the $ sign for example 
my name is $name 

System Variables comes with the operating system and are written in Capital letters . $HOST 

4.  `Conditional Statements` (if , else , elif )


if [ condition ]; then
  # Code if condition is true
fi


`if -else syntax` 

if [ condition ]; then
  # Code if true
else
  # Code if false
fi

--------------------------
read -p "Enter your PIN: " pin

if [ "$pin" == "1234" ]; then
  echo "You have successfully logged in"
else
  echo "Wrong password"
fi
-----------------------------


`if-Elif - Else syntax 

if [ condition1 ]; then
  # Code if condition1 is true
elif [ condition2 ]; then
  # Code if condition2 is true
else
  # Code if none are true
fi


Note : The elif helps us to pass multiple conditions 

example : 


5.  `Loops ( For loop , while loop , Until Loop )`

`For loop ` : A for loop is used when you want to repeat something multiple times 

##### for loop syntax ######

example 

for variable in list; do
  commands 
done

`example 1`

for i in 1 2 3 4 5
do
  echo "Number: $i"
done

example 2

for file in *.txt
do
  echo "Processing $file"
done


for = repeats the action over each element in the list 
in = list of elements 
do = is the action we want the for to carryout on the list 
done = once the action or condition is meet or complete 


`while loop`:
A while loop on the other hands runs as long as a condition is True 

while [ condition ]
do
  commands
done

It will keep looping (running ) until the condition becomes false

`example 1`

count=5
while [ $count -gt 0 ]
do
  echo "Countdown: $count"
  ((count--))
done


While = Keeping looping as long as the condition is True 
[ ] = Our condition is in this bracket 
$ Count = Current value to count 
-gt = greater than 
0 = zero 

Keep running the loop while count is greater than 0 

5 is greater 0 = True 
4 is greater 0 = True 
3 is greater 0 = True
2 is greater 0 = True
1 is greater 0 = True
0 is greater 0 = False ( the loop stops here )


use case 
`example 2`

while read line
do
  echo "Line: $line"
done < backup.txt


`Until Loop` : An until loop is the opposite of a while loop . It runs as long as the condition is false and it stops when the condition becomes true

until [ condition ]
do
  commands
done


example 

count=1

until [ $count -gt 5 ]
do
  echo "Number: $count"
  ((count++))
done


+ Run the loop until count is greater than 5
+ as long as count is <= 5 , it keeps running 

output 

Number: 1
Number: 2
Number: 3
Number: 4
Number: 5

### 🔁 Summary Table

| **Loop Type** | **Runs When**               | **Common Use Case**                         |
|---------------|-----------------------------|---------------------------------------------|
| `for`         | Iterates over a list/range  | Files, arguments, fixed number of iterations |
| `while`       | While condition is true     | Waiting for something, reading input         |
| `until`       | Until condition is False    | Retry loops, wait-until conditions true      |



6.  `Arithematic Opertaions` 

## Arithmetic Operations 

This is important when you want to perform mathematical calculations in your bash shell scripts 

`expr` 

results=$(expr 5 + 3)
echo "5 + 3 = $results"

or 

`Double Parenthensis` $((  ))  

results=$((5-3))
echo "5 + 3 = $results"


`Addition (sum)  +` 
a=5
b=2
sum=$((a + b))
echo "sum: $sum"

`subtraction (difference) - `

a=5
b=2
difference=$((a - b))
echo "difference: $difference"

`Multiplication * `

a=5
b=2
eggs=$((a * b))
echo "eggs: $eggs"


`Divison /`

a=5
b=2
eggs=$((a / b))
echo "eggs: $eggs"

`Modulus  (Remainder ) %`

a=5
b=2
remainder =$((a % b))
echo "remainder: $remainder"

`Increment  and Decrement ++`

`increment` 

a=5
((a++))
echo "increment a: $a"

decrement 
a=5
((a--))
echo "increment a: $a"


 + addition 
 - subtraction 
 * Multiplication 
 / division 
 % Modulus /remainder of division 
 ** Exponentiation 
 ++  Increment 
 -- decrement 


### 🔢 Bash Arithmetic Comparison Summary

| **Style**      | **Operator** | **Meaning**        | **Example**             |
|----------------|--------------|--------------------|--------------------------|
| `(( ))`        | `==` or `=`  | Equal to           | `(( a == b ))`          |
| `(( ))`        | `!=`         | Not equal to       | `(( a != b ))`          |
| `(( ))`        | `>`          | Greater than       | `(( a > b ))`           |
| `(( ))`        | `<`          | Less than          | `(( a < b ))`           |
| `(( ))`        | `>=`         | Greater or equal   | `(( a >= b ))`          |
| `(( ))`        | `<=`         | Less or equal      | `(( a <= b ))`          |
| `[ ]`          | `-eq`        | Equal to           | `[ "$a" -eq "$b" ]`     |
| `[ ]`          | `-gt`        | Greater than       | `[ "$a" -gt "$b" ]`     |
| `[ ]`          | `-lt`        | Less than          | `[ "$a" -lt "$b" ]`     |






END 



7.  `Arrays` 

what is an array : its a syntax just like any other syntax in bash . An array is a special type of variable that can hold multiple values at once instead of just one value 

`example of an array syntax` 

fruits=("apple" "mango" "banana" "pear")
numbers=("1" "2" "3" "4" "5")


USE CASE : You might want to write a script that is going to loop through list 

8. `Functions`

Functions allow you to bundle your code for repeated use .Makes your bash shell script or code well organised and maintanable . They help to organise your script , avoid you repeating the code and makes your logics in your modular 


`syntax 1`

function_name () {
  # command go here
}

function_name :  this will call the function 

`example of a simple function` 

#!/bin/bash

 greet () {
  echo "welcome to team4tech solutions!"
}

greet  # calling the function 


`example 2`

#!/bin/bash
 greet_person () {
  echo "hello $1"
 }

greet_person "Lino"  # calling the function 
greet_person "Dang"
greet_person "Calson"



#### syntax 2

function "function_name" {
  your code here
}

example 

#!/bin/bash
 function greet_person () {
  echo "hello $1"
 }

greet_person "Lino"  # calling the function 
greet_person "Dang"
greet_person "Calson"


9.  `Input & Output` in Bash 


`ouputs` 

we can use the following to output information 

+ `echo`  : 
Its going display a line or variables to a standard ouput 

echo "hello class6"

+ `printf` 
This is similar to echo 
printf "Name: %s\nAge: %d\n" "Alice" 30 



### Redirect Ouput 


echo  "content" > <filename> (replace content )
echo "content" >> <filename> (add content to already existing content)

Standard input (when you run a command )
standard ouput ( what the command gives you is an output )
standard error 

>  : redirect a standard output to a file : overwrites content 
>> : redirect standard output  to a file : appending (add content to already existing content )


## Input

Reading from standard input. The "`read`" command is used to take input from the user and store it as a variable .


e.g 

echo "Please enter your name"   
read name 
echo "Hello, $name Welcome to Team4Tech Solutions Cloud & DevOps Master Class!"


Redirecting Input 
<  : Read from a file 

e.g 
wc -w < welcome.sh   ( This counts the words in the welcome.sh file )

command < filename (stdin)




name =calson 

+ storing data 
+ We use variables to make our scripts dynamic ( no hardcoding )
+ It makes your script readable or improves readbility 




10. `Positional Parameters` 

In Bash, parameters are the values or arguments passed to a script or function when it's executed. These are also called positional parameters because they are accessed by their position in the command line.

They are system define parameter (variables )

 `Positional Parameters / Arguments` 


| Variables or Symbols | Description                                                      |
|----------|------------------------------------------------------------------|
| `$0`     | The name of the script.                                          |
| `$1`, `$2`, ... `$N` | The first, second, ..., 3th argument passed to the script. |
| `$#`     | The total number of arguments passed to the script.                    |
| `$@`     | All the arguments passed to the script, as separate words.       |
| `$*`     | All the arguments passed to the script, as a single word/string.        |
| `"$@"`   | All the arguments passed to the script, each quoted separately.  |



## Special Purpose Variables

| Variable | Description                                     |
|----------|-------------------------------------------------|
| `$$`     | The process ID (PID) of the current shell.      |
| `$?`     | The exit status of the last executed command.   |
| `$!`     | The PID of the last background process.         |
| `$_`     | The last argument of the previous command.      |



example :

#!/bin/bash 
#example.sh

echo "script name: $0"
echo "First arguments: $1"
echo "Second arguments: $2"
echo "All arguments: $@"
echo "Number of arguments : $#"

# Display the process ID of the script 
echo "Current PID: $$"

# Run a command and display its exit status
ls /nonexistent 
echo "Exist status of lastt command: $?"

# Run a background process and display its PID 
sleep 10 & 
echo "PID of last background process: $!"

###########################

Example 

backup.sh 

sh backup.sh tricia backtricia fileback



#!/bin/bash

# Check if at least two arguments are provided
if [ "$#" -lt 2 ]; then
    echo "please provide Usage: $0 <source_directory> <backup_directory> [backup_name]"
    exit 1
fi

# Assign positional parameters to variables
SOURCE_DIR=$1
BACKUP_DIR=$2
BACKUP_NAME=${3:-backup_$(date +%Y%m%d)}

# Create the backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Perform the backup using tar
tar -czf "$BACKUP_DIR/$BACKUP_NAME.tar.gz" -C "$SOURCE_DIR" .

# Print a success message
echo "Backup of $SOURCE_DIR completed successfully."
echo "Backup file created: $BACKUP_NAME.tar.gz"


11. Case Statement in Bash 

The case statement in Bash is used for `multi-branch decision-making` — similar to `switch` in other programming languages
Its really good when you need to match one variable agiants multiple posible patterns 

`example of a case statement syntax` 

case "$variable or expression" in 
      pattern1)
        command1
        ;;
      pattern2)
        commands2
        ;;
      *)
        default_commands
        ;;
esac


expression : Values you will compare against the pattern 

pattern1 or pattern2 : This `patterns` the expression is tested against 

command1 and command2 : This actual `actions` that are executed if the expression matches the `pattern` 

*) : The default case that matches anything if no other pattern matchees (optional )

;; : terminates each branch of the case

esac :  ends the case statement, Its case spelled backward  

## example 

#!/bin/bash

# Script to display a message based on the day of the week

day_of_week=$1  # Take the first command line argument

case $day_of_week in
    Monday|monday)
        echo "Start of a new week!"
        ;;
    Tuesday|Wednesday|Thursday)
        echo "It's a busy week!"
        ;;
    Friday)
        echo "Almost the weekend!"
        ;;
    Saturday|Sunday)
        echo "Enjoy the weekend!"
        ;;
    *)
        echo "Unknown day: $day_of_week"
        ;;
esac


`example 2`

#!/bin/bash

echo "Choose an option:"
echo "1. Show date"
echo "2. List files"
echo "3. Show current user"

read -p "Enter your choice: " choice

case "$choice" in
  1)
    date
    ;;
  2)
    ls -l
    ;;
  3)
    whoami
    ;;
  *)
    echo "Invalid option"
    ;;
esac


+ case matches the value of choice against the listed patterns (1, 2, 3).
Each block ends with ;; to mark the end of that case.
* is the default case, used when no match is found.
esac is the reverse of "case", marking the end of the block.




**Debug vs Troubleshoot**


# What is the meaning of Debug or Debugging 

Its simply a process of you identifying , isolating and fixing bugs or errors in a code (Bash shell).
Its a systematic approach primarily used by developers to ensure that the code/script behaves as expected 

+ It focuses on the code logic and syntax 
+ It ensures correct flow and output of the script 


# What is Troubleshooting 

Troubleshooting is a broader process of diagnosing and resolving issues in systems or processes . It 
includes `hardware, software , networks , and other systems` .This involves you identifying the root  cause of a problem and implementing a solution . 



# How to Debug a Bash Shell Script 

Debugging a bash shell script is very important its going help you to 
identify , and fix errors.

1- **Using "set" Command Options**

`set` with different flags 

`set -x` : Enables a mode of the shell where all executed commands are printed to the terminal . This useful for tracing the flow of the script .

`set -e` : This causes the script to exit immediately if any command returns a non zero status 
`set -u` : Treats unset variables as an error when performing parameter expansion 
`set -o  pipefail` : Causes the pipeline to return the exit status of the last command in the pipe that failed 


EXAMPLE 

#!/bin/bash
# this script tells you how busy i am during the days of the week 
set -x 

day_of_week=$1  # Take the first command line argument

case $day_of_week in
    Monday)
        echo "Start of a new week!"
        ;;
    Tuesday|Wednesday|Thursday)
        echo "It's a busy week!"
        ;;
    Friday)
        echo "Almost the weekend!"
        ;;
    Saturday|Sunday)
        echo "Enjoy the weekend!"
        ;;
    *)
        echo "Unknown day: $day_of_week"
        ;;
esac

set +x




2 . **Using 'bash -x or bash -v'**

This helps you to run your script in debugging options directly from the commandline 

 bash -x <scriptname> : Its going to print each command and its arguments as they are executed 
 bash -v <script name> : Prints each line of the script as it is read 

example :  bash -x "script name"



3. **Using 'trap'**
The trap command can catch and handle signals and other script errors.

example 

#!/bin/bash
trap 'echo "An error occured in line $LINENO"; exit 1' ERR

# your script commands here
echo "Running Script
false


4. **Adding 'echo' statements**

Adding this echo statements that is going to output information on the commandline in strategic points in your bash shell script can help you understand the flow and state of variables 
        
#!/bin/bash

echo "Starting script"
var="Hello World"
echo "variable value: $var"
echo "script has ended 




# Common Questions about Bash shell scripts 

+ What is your experience with Bash Shell Scripting 
+ They can show you a bash shell script and ask you to tell them what the script is all about 
+ if a developer gives you a code or bash shell script to review what are the best practises you would be looking for in the code or script 
+ Can you debug the script or how can you debug a bash shell script .


USE CASE : 

+ Automate task ( Automating IAM Key rotation ,Package Management, Backing Important files into s3 bucket , use to monitor health of servers by checking CPU .memory and disk space usage , use it for cost Optimization , cleanup of your servers)


## Exit Codes 

+ exit 0 : This indicates a succesful completion of your script 
+ exit 1 : This indicates an error occured during the execution of the scripts or command 
+ exit 2 : Can be used to indicate a different type of error , for example more severe error depending on the context or command .


** 
+ Automate Tasks such as : starting and stopping servers in `development and staging environments` 
+ Create a bash shell script that rotates api keys (secret access keys ) that are older than 90 days 
you write a bash shell script that when run it deletes the old api keys and creates a new one and then update your local environment with the new key .To extend its functionality you can install aws cli on your mac or windows using a bash shell script and setup all its configurations 
+ A script to standardize all logging in our environment 
+ Backup script 
+ user management script ( create user , give the user password , setup ssh access )
+ Log retention retention 
+ CI/CD pipelines 
+ perfomance monitoring 
+ Disaster recovery 




CHALLENGE ! BASH 


1. we have created a user in aws under IAM 
2. under user we have created access keys 
3. we need to configure our local terminal to interact with aws console 





**GIT AND GITHUB** 

+ Identify 
+ understand use of each syntax 
+ Practise 



+ Assignments 

+ Write a bash shell script that can automatically start your ec2 instance and shut down the instance everyday 
+ Write bash shell script that can create an ec2 instance for you . 



Can you tell me your experience in shell scripting ?
impact : saving company money 

crontab - to start and stop ec2-instance 
servers --ec2 instances for cost optimization 

pay as you go 



100 scripts 

logging :   store events
            timestamp , level , scriptname  message 
            2025/01/19. error   ec2instance.sh  - 
 log levels:  Debug , info , warn , error , critical 


Can you tell me your experience with Bash shell scripting 


Task you have perfom with bash shell script 

+ Packagement - Installing tools 
+ Cost optimization - To auto start and auto shutdown ec2 instances in our development environments 
+ Backup - automate backup of important files to s3 bucket
+ Cleanup idle EBS volumes and snapshots in aws for cost optimization 
+ Written a bash shell script for Data restoration test to meer Disaster recovery requirements for SOC compliance 




`GIT AND GITHUB` 

`AWS`


6 months ----> Cloud engineer or DevOps engineer 
3 days weeks - Monday , Tuesday and wednessday  7pm to 9 pm est 
Web application 
recording 

what is a cloud engineer , devops engineer 



END OF BASH SHELL SCRIPTING NOTES 


