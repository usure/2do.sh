#!/bin/bash
#Made by Gregoryx12 aka TheShadowFog
#Edit below
file=~/todo.txt

if [ ! -s $file ]; then
    echo "$file is empty" 
else
echo "Your current todo.txt"
cat $file
fi


if [ -f $file ]
	then
echo exists >> /dev/null 2>&1
	else
touch file
fi

while :
	do
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


