echo -e "Enter basic salary \c"
    read salary
    if [ $salary -ge 1000 ]
    then
             da=`expr $salary \* 40 / 100`
            ha=`expr $salary  \* 20  / 100`
         Nsalary=`expr $salary + $da + $ha`
         echo "ur Basic salary        $salary "
         echo "ur Dearness Allowance    $da "
         echo "Ur House rent            $ha "
         echo "                     ------------"
         echo "Ur Net salaryary is   Rs. $Nsalary "else
        echo "Pls enter basic salary greater than 1000 "
    fi  
