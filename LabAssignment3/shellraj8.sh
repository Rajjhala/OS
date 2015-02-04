#Fibonacci Series
echo "Enter the value of n"
read n
a=0
b=1
echo "Fibonacci series:"
echo $a
echo $b
for (( i=2; i<n; i++ ))
do
c=`expr $a + $b`
echo $c
a=$b
b=$c
done
