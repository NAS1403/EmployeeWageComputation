echo "Welcome to Employee Wage Computation Program"

a=$((RANDOM%2))

if [ $a -eq 0 ]
then
	echo "Employee is present"
else
	echo "Employee is absent"
fi
