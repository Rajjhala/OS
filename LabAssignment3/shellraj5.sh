#5. Write a shell script to accept numbers below 50 and to display the square of each. This should continue as long as the user wishes
count=0
while [ $count -eq 0 ]
do
	echo "Enter number1="
	read number1
	if [ $number1 -gt 50 ];then
	break
	fi
	if [ $number1 -lt 50 ];then
	echo "$((number1 * number1))"
	echo "Press 0 to continue or press anything to exit"
	read count
	fi
done
	
