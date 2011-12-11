#!/bin/bash
#Made by Gregoryx12 aka TheShadowFog
#if you want the cli version, use todo.sh
#Edit below
file=~/todo.txt

if type -P zenity >/dev/null; then
echo "zenity is Installed" >> /dev/null 2>&1
elif [ -f /etc/arch-release ] ; then
sudo pacman -S zenity
else [ -f /etc/lsb-release]
sudo apt-get install zenity
fi

if [ -f $file ]
	then
echo exists >> /dev/null 2>&1
	else
touch file
fi

#if [ -f ~/$BASH_SOURCE.txt ]
#then
#echo exists >> /dev/null 2>&1
#else
#touch ~/$BASH_SOURCE.txt
#fi

while :
	do
todotext=$(zenity --entry --text "What would you like to add to your todo list?" --entry-text "something"); 
echo $todotext >> $file

if zenity --question --text="Do you want to add anything else?"; then
echo blah >> /dev/null 2>&1
else
#zenity --info --text "Your todo list is located at: $file"
exit
fi

done


