#! /usr/bin/bash

#tutorial_1 #Printing hello world
#echo "Hello World"
#name=My_name
#echo $name

#tutorial_2 #Taking input from the user
#echo "Enter name:"
#read name1
#echo the name1 was $name1
#read -p "My name2 will be:" name2
#echo name2 was $name2
#echo the array of the names is as follows:
#read -a name_a
#echo the first few names are ${name_a[0]}, ${name_a[1]}, ${name_a[2]}

#tutorial_3 #taking in arguments and processing them
#echo $0 $1 $2 $3 '>echo $! $2 $3'
#args=($@)  #default array to store the arguments
#echo ${args[0]}, ${args[1]}, ${args[2]}
#echo $@ #prints the arguments array
#echo $# #prints the number of arguments

#tutorial_4 # if-else operators and conditional operators
#count=10
#if [ $count -lt 9 ]
#then 
#echo condition is true
#elif [ $count -eq 10 ]
#then
#echo the condition is false
#else 
#echo nothing is true
#fi
# #See condition operators for various strings and integers

#tutorial_5 # working with files and doing basic operations
#echo -e "enter the name of the file: \c"  #this -e command helps in recognizing \c which is a special character
#read file_name
#if [ -d $file_name ] #multiple different commands to find which of the file/dir/permission/storage we are checking  
#then
#echo "$file_name found"
#else
#echo "$file_name not found"
#fi

#tutorial_6 #more complex operations on files
#echo -e "Enter file name: \c"
#read file_name
#if [ -e $file_name ]
#then 
#if [ -w $file_name ]
#then 
#echo "type some text data. To quit ctrl+d"
#cat >> $file_name
#else
#echo "the file do not have the permisisions"
#fi
#else
#echo The file do not exist
#fi

#tutorial_7 #working with multiple conditional operators
#age=21
#if [ $age -gt 18 ] && [ $age -lt 30 ]
#then 
#echo Yes this is the valid age
#else
#echo Nope, not the right age
#fi

#tutorial_8 #working with OR logical operator
#age=16
#if [ $age -gt 18 ] || [ $age -lt 15 ]
#then
#echo Yes, the age is valid
#else
#echo Not an appropritate age
#fi

#tutorial_9 # Working with arithimetic operators
#num1=20
#num2=5
#echo $(( num1 + num2 )) #adds
#echo $(( num1 - num2 )) #subs
#echo $(( num1 * num2 )) #multiply
#echo $(( num1 / num2 )) #div
#echo $(( num1 % num2 )) #remainder
##other option is to use the expr command

#tutorial_10 #working with decimals (look into chat with Avadhesh) 
#num1=20.5
#num2=5.0
#echo "$num1 + $num2" | bc 
#num=27
#echo "scale=2;sqrt($num)" | bc -l

#tutorial_11 #case statement
#vehicle=$1
#case $vehicle in
#"car" )
#echo Rent of $vehicle is 100 dollars ;;
#"van" )
#echo Rent of $vehicle is 150 dollars ;;
#"bus" )
#echo Rent of $vehicle is 200 dollars ;;
#* ) # any other text
#echo unknown vehicle ;;
#esac

#tutorial_12
#echo -e "Enter any character \c"
#read char
#case $char in 
#[a-z] ) #Pattern conditional
#echo You have entered a small letter ;;
#[A-Z] )
#echo You have entered a Capital letter ;;
#[0-9] )
#echo You have entered an Integer ;;
#? )
#echo You have entered a special character ;;
#* )
#echo Please enter just a single character ;;
#esac

#tutorial_13 #tutorial on array 
#os=('ubuntu' 'windows' 'mac')
#echo ${os[@]}
#echo -e "Enter your own array : \c"
#read -a arr
#echo ${arr[@]}
#echo ${!arr[@]} #index printing
#echo ${#arr[@]} #size of array
#arr[3]=cool
#unset arr[2]
#echo ${arr[@]}
#string=asdfghjkl # only 1 element in the array and not multiple values
#echo ${string[@]}
#echo ${#string[@]}

#tutorial_14 #tutorial on while loops
#n=1
#while [ $n -le 10 ]
#do 
#echo $n
#n=$((n+1))
#done

#tutorial_15 #sleep
#n=1
#while [ $n -le 10 ]
#do
#echo $n
#n=$((n+1))
#exec $SHELL
#done

#tutorial_16 #reading files using while loops
#while read p #Method1
#do 
#echo $p
#done < test
###
#cat test | while read p #Method2
#do 
#echo $p
#done
###
#while IFS= read -r line #Best method
#do 
#echo $line
#done < test

#Tutorial_17 #Until loop
#n=10
#until [ $n -le 0 ]
#do
#echo $n
#n=$((n-1))
#done

#Tutorial_18 #For loops
#for n in {1..10..2} #Star..End..Increment
#do
#echo $n
#done
###
#for ((i=0; i<5; i++)) 
#do 
#echo $i
#done
###

Tutorial_19 #For Loop to read
for command in ls pwd date
do
echo "-----------------$command-------------"
$command
done
##
for item in *
do
if [ -d $item ]
then 
echo $item
fi
done

#Tutorial_20 #Select Loop
#select name in mark john tom ben
#do 
#echo $name selected
#done
###
#select name in Mark John Tom ben
#do
#case $name in
#mark )
#echo mark selected ;;
#John )
#echo john selected ;;
#Tom )
#echo tom selected ;;
#ben)
#echo ben selected ;;
#* )
#echo "wrong selection" ;;
#esac
#done

#Tutorial_21 #BreakAndContinue
#for ((i=1; i<10; i++))
#do 
#if [ $i -eq 2 ]
#then
#continue 
#fi
#if [ $i -eq 8 ]
#then
#break 
#fi
#echo $i
#done

#Tutorial_22 #Functions
#function base(){
#    echo hello world
#}
#quit () {
#    exit
#}
#base
###
#function print(){
#    echo $1 $2 $3
#}
#print Hello base name

#Tutorial_23 #local_variable
#function print(){
#    name=$1 #All the variables are global and to make a local variable we need to use Local command
#    echo The name is $name
#}
#name=tom
#echo $name
#print Max
###
#function new() {
#    local var=$1
#    echo the name is $var
#}
#var=tax
#new max fax lax
#echo $var

#Tutorial_24 #function_Example # Why is this code not running??
#function usage() {
#   echo "Please enter a valid name"
#    echo "Usage -> $0 file_name"
#}
#function is_file() {
#    [[ -f "$1" ]] && return 0 || return 1
#}
#if [ $# -eq 0 ] 
#then 
#usage
#fi
#if ( is_file "$1" )
#then 
#echo $1 file exists
#else
#echo "file does not exist"
#fi

#Tutorial_25 #Readonly
#var=31
#readonly var # makes a variable readonly
#var=50
#echo $var
#hello() {
#    echo "Hello World"
#}
#readonly -f hello # -f makes a function readonly
#hello() {
#    echo "Hello World again"
#}
#readonly #this gives the value of all the readonly variables
#readonly -f #this gives the value of all the readonly functions

#tutorial_26 #Signals and Trap statment
#echo pid is $$
#count=1
#while [ $count -le 10 ]
#do
#echo $count 
#count=$((count+1))
#sleep 2
#done
# #Ctrl+z is the termination signal
# #Ctrl+c also terminates signal
# #can be killed using signal kil -9 "PID" in another terminal
#trap "echo Exit command is detected" 0 # this is executed when signal 0 is detected
#echo "hello World"
#exit 0
##Trap cannot catch the sigkill and sigstop command
#file=/c/Users/pshrivastava/desktop/delete
#trap "rm -f $file; file" 0 2 15
#echo pid is $$
#while (( count < 10 ))
#do 
#sleep 10
#(( count ++ ))
#echo $count
#done 
#exit 0
# traps can be easily removed by - trap_number

#tutorial_27
##to debug we can use bash -x hello.sh
##another way to debug is writing set -x in the line you want to start debugging and set +x at the point you want to end the debugging
##another way is to write -x in the line #!/usr/bin/bash -x
