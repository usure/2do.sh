file=~/todo.txt

#if grep -q "1." $file; then


#fi

#sed '/./=' $file | sed '/./N; s/\n/ /'


echo "Do you want to add anything else?"
read yesorno 
#echo ${yesorno^^*}

#xyesorno="$(tr [A-Z] [a-z] <<< "$yesorno")"
#tr '[A-Z]' '[a-z]' $yesorno
#${yesorno^^*}
echo $yesorno
addmore=$yesorno
if [ "${yesorno^^*}" == "YES" ]; then
echo it works
#read todotext 
#echo $todotext >> todo.txt
  elif [ "$yesorno" == "NO" ]; then
$yesorno
exit
else
exit
  fi

