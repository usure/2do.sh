file=~/todo.txt

#if grep -q "1." $file; then


#fi

sed '/./=' $file | sed '/./N; s/\n/ /'

