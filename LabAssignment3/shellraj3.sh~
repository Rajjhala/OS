echo "Enter number1="
read number1
echo "Enter number2="
read number2
echo "Functions"
echo "1. Add"
echo "2. Sub"
echo "3. Mul"
echo "4. Div"
echo "Choose your option"
read option

case $option in
	1)
	echo "Add"
	echo $number1+$number2 | bc ;; #perform addition from bc (calculator);;
	
	2)
	echo "Sub"
	echo $number1-$number2 | bc ;; #perform subtraction from bc (calculator)		
	
	3)
	echo "mul"
	echo $number1*$number2 | bc ;; #perform multiplication from bc (calculator)	
	
	4)
	echo "div"
	echo $number1/$number2 | bc ;; #perform Division from bc (calculator)

	5)
	echo "Modulo"
	echo $number1%$number2 | bc ;; #perform Division from bc (calculator)

	*)
	echo "Wrong option"s ;;
	
	esac #To end the case 
