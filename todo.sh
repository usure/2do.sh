#!/bin/bash
#Made by Gregoryx12

file=~/todo.txt

if [ -f $file ]
	then
echo file exists  /dev/null >> /dev/null 2>&1
	else
touch file
fi

while :
	do

if [ ! -s $file ]; then
    echo "$file is empty" >> /dev/null 2>&1
else
echo "Your current todo.txt"
cat $file
fi

echo "What would you like to add to your todo list?"
read todotext 
echo $todotext >> $file

echo "Do you want to add anything else?"
read yesorno
addmore=$yesorno

if [ "$yesorno" == "yes" ]; then
echo "What would you like to add to your todo list?"  >> /dev/null 2>&1
#read todotext 
#echo $todotext >> todo.txt
  elif [ "$yesorno" == "no" ]; then
exit
  fi

done


