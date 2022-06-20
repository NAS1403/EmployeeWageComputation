echo "Welcome to Employee Wage Computation Program"

Wage_per_hour=20
Full_day_hour=8
Half_day_hour=4
Daily_wage=0

a=$((RANDOM%3))

if [ $a -eq 0 ]
then
	echo -e "Employee is present\n"
	Daily_wage=$(($Wage_per_hour*$Full_day_hour))
	echo "Employee Daily wage is " $Daily_wage
elif [ $a -eq 1 ]
then
	echo -e "Employee working partime\n"
	Daily_wage=$(($Wage_per_hour*$Half_day_hour))
        echo "Employee Daily wage is " $Daily_wage
else
	echo "Employee is absent"

fi
