echo "Welcome to Employee Wage Computation Program"

Wage_per_hour=20
Full_day_hour=8
Half_day_hour=4
Daily_wage=0

a=$((RANDOM%3))

case $a in

	0)
	echo -e "Employee is present\n"
	Daily_wage=$(($Wage_per_hour*$Full_day_hour))
	echo "Employee Daily wage is " $Daily_wage  
	;;

	1)
	echo -e "Employee working partime\n"
	Daily_wage=$(($Wage_per_hour*$Half_day_hour))
        echo "Employee Daily wage is " $Daily_wage
	;;

	2)
	echo "Employee is absent"
	;;
esac
