echo "Enter number1="
read number1
echo "Enter number2="
read number2
if [ $number1 -gt $number2 ];then
	echo "$number1 is greater than $number2"
elif [ $number1 -lt $number2 ];then
	echo "$number1 is lesser than $number2"
else
	echo "Both are equal"
fi
	
