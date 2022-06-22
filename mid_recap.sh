#!/bin/bash
#printing 2 mrthods 1. echo 2. printf
var="Hello Var"
#new line for every echo
echo "Hello World"
#no new line by default for printf can use \n to change line or goto new line
printf "Hello World \n"

str="This is a long line with multiple words"
#using IFS, we tell the delimiter for this file
IFS=' '
read -ra arr <<< "$str"
#getting the length or total number of elements in arr
echo "The size of the arr is ${#arr[@]} "
for i in "${arr[@]}";
do
	printf "$i\n"
done


echo This is an example without quotes
echo -n "This is an example for -n "
echo -e "\nNewLine \t tab space \t tab space \n" 

#getting commands exe inside bash

whoami
(( whoami ))
(( sum1=23+23+23 ))
(( sum2=23**3 ))
echo $sum1 $sum2

#multiline comment
: '
This is line 1 of a multi line comment
Ths is the 2nd line of the 
This is the 3rd lline
'

# floor round --> the greatest value is less thn or eq to x
#ceiling round -->  least value gt or eq x
#half-up round -->  half value
: '
		Floor		Ceiling		Half Roound
(( 4/2 ))2	2		2			2
(( 3/2 ))1.5	1		2			2
(( 10/3 ))3.33..3		4			3
'
#Doing floor rounding 
echo "floor value : 4/2 = $(( 4/2 ))"
echo "floor value : 3/2 = $(( 3/2 ))"
echo "floor value : 10/3 = $(( 10/3 ))"

echo $(( 1 > 0 ))
echo $(( -1 > 0 ))
#$(( ( x/y ) + ( x%y > 0 ) ))

echo "Ceiling value : 4/2 = $(( ( 4 / 2 ) + ( 4 % 2 > 0 ) ))"
echo "Ceiling value : 3/2 = $(( ( 3 / 2 ) + ( 3 % 2 > 0 ) ))"
echo "Ceiling value : 10/3 = $(( ( 10 / 3 ) + ( 10 % 3 > 0 ) ))"

#ceiling (x/y)= ( x+y -1 )/y

#loops
#while [ true ];do statements done
#while [ true ]{ statements }
count=1
while [ $count -le 10 ]
do
	echo $count
	(( count=$count+1))
done

# for (( i=10;i>1;i--))do statements done ((start;exit condi;iteration/steps))
for (( i=1;i<=10;i++ ))
do
	echo $i
done
#if else

read -p "Enter a number " number
if [ $number -gt 100 ];
then
	echo "The input value is $number"
else
	echo "Input not found"
fi
# use the and operator for using multiple conditions
#the AND operator does the work of checking if multiple conditions are met or are true at a time

read -p "Enter second number " number2

if [[ ( $number2 -lt 100 ) && ( $number2%2 -eq 0 ) ]];
then
	echo "both true"
else
	echo "both false or 1 false"
fi
# or opertor returns true if any one of the condition returns true
if [[ ( $number2 -lt 100 ) || ( $number2%2 -eq 0 ) ]];
then
        echo "if 1 true"
else
        echo "both false"
fi

#else if--> elif  --> used in implimenting the chain logic
read -p "Enter a number for elif " number3

if [[ $number3 -lt 100 ]]
then
	echo "Greater than 100"
elif [[ $number3 -gt 1001 ]]
then
	echo "Greater than 1000"
elif [[ $number3 -eq 1000 ]]
then
	echo "equals 1000"
else
	echo "enter a number atleast greater than 100"
fi

#case statement --> switch case --> match the input with the case value if match then exe the case 
#otherwise default cse is exed
read -p "Enter options 1,2 or 3 " choice

case $choice in
	1)
		echo "Option 1 exed"
		;;
	2)
		echo "Option 2 exed"
		;;
	*)
		echo "Default case exed"
		;;
esac

#command line args ./bash.sh 10 11 12 13 14 
echo "Total args are : $#"
echo "First arg is $1"

#string operations
#concatenation --> adding two or more strings
string1="Contactination"
string2=" String"
string3=$string1$string2
echo "Original string1 is $string1 , string2 is $string2 , and the concatenation is $string3"

#slicing --> getting a substring when specifing the start position and end position
subString=${string3:2:6}
echo $subString


#functions  --> grouping of similar statement, making a code block
function addition()
{
	echo "Addition called"
}
addition 

function greet()
{
greeting="Hello $name, Have a great day"
echo $greeting
}
read -p "enter your name " name
val=$(greet)
echo "$val"

#exe commands with bash
#we are creating a folder with the folder name as input
read -p "Enter a name for folder " folder_name
if [ -d "$folder_name" ];
then
	echo "Folder already exists"
else
	cmd="mkdir $folder_name"
	eval $cmd
	echo "Folder Created "
	ls
fi

#reading from a file
file="names.txt"
while read line;
do
	echo $line
done < $file
#adding to a file, appending to a file
echo "A easy and modern arch based distro --> endeavourOS" >> names.txt
cat names.txt

#send mail
recepient="tuhin@mdtuhin.tech"
subject="Demo for mails"
message="This is an example mail sent from Linux"
`mail -s $subject $recepient <<< $message`

#sleep and wait
#sleep 10
sleep 10
wait 10

