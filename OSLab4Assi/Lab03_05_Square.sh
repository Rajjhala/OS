#5. Write a shell script to accept numbers below 50 and to display the square
# of each. This should continue as long as the user wishes.

#!/bin/sh

count=0

while [ $count -eq 0 ]
do
	echo "Please enter number"
	read first
	if [ $first -le 50 ]
	then
		echo "square:$((first *first))"
	else 
		echo "Number is grater than 50"
	fi
	
	echo "press 0 if you want to conti..."
	read count

done 
