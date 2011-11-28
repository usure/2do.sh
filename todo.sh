#!/bin/bash
#Made by Gregoryx12 aka TheShadowFog
#if you want to use the GTK version. Run todogtk.sh
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
read yesorno | tr '[a-z]' '[A-Z]'


if [ "$yesorno" == "YES" ]; then
>> /dev/null 2>&1
  elif [ "$yesorno" == "NO" ]; then
	exit
else
	exit
  fi

done


