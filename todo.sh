#!/bin/bash
#Made by Gregoryx12 aka TheShadowFog
#if you want to use the GTK version. Run todogtk.sh
#Edit below
file=~/todo.txt
case "$1" in
  edit)
        nano $file
        exit  
	;;
   view)
       cat $file
        exit  
        ;;

  clear)
     > $file
     exit
    ;;

    add)
    echo "$2" >> $file
   exit
  ;;


    info)
    echo "theshadowfog.com"
     exit
    ;;


  help)
   echo "You may run: "
    echo "./todo.sh view"
    echo "./todo.sh edit"
    echo "./todo.sh clear"
    echo "./todo.sh help"
    echo "./todo.sh info" 
   exit
    ;;


esac

#exit 0


if [ ! -s $file ]; then
echo "$file is empty"
else
echo "Your current todo.txt"
#cat $file
nl $file
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

if [ "${yesorno^^*}" == "YES" ]; then
echo "Ok"  >> /dev/null 2>&1
#read todotext 
#echo $todotext >> todo.txt
  elif [ "${yesorno^^*}" == "NO" ]; then
exit
else
exit
  fi

done




