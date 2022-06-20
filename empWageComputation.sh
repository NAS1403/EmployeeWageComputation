echo "Welcome to Employee Wage Computation Program"

Wage_per_hour=20
Full_day_hour=8
Daily_wage=0

a=$((RANDOM%2))

if [ $a -eq 0 ]
then
	echo -e "Employee is present\n"
	Daily_wage=$(($Wage_per_hour*$Full_day_hour))
	echo "Employee Daily wage is " $Daily_wage
else
	echo "Employee is absent"
	echo "Employee Daily wage is " $Daily_wage
fi
