read a;
b= grep $a raj.txt;

if [ $? -eq 0 ]
then              
echo character found ;
else 
echo "character not found "
fi

