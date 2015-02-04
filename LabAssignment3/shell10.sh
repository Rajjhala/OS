# 10. Write a shell script program to search whether element is present in the list or not and also display its position in the list.

echo “Enter total no of elements”
read n
i=0
echo “Enter elements”

while [ $i -lt $n ]
do
	read a[i]
	i=`expr $i + 1`
done

echo ” Enter the element to search”
read k
j=0
flag=0

while [ $j -lt $n ]
do 
	if [ $k -eq ${a[j]} ]+
	then
	flag=1
	break
	fi
	j=`expr $j + 1`
done

if [ $flag -eq 1 ]
then
	echo number is found at `expr $j + 1` position
	else echo Element is not found.
fi




