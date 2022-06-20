echo "Welcome to Employee Wage Computation Program"

Wage_per_hour=20
Full_day_hour=8
Half_day_hour=4
Month_work_days=20
Daily_wage=0
Monthly_wage=0
Total_work_hours=0
Total_work_days=0


while [ $Total_work_hours -le 100 ] && [ $Total_work_days -le 20 ]
do
a=$((RANDOM%3))
case $a in

	0)
	echo -e "\nEmployee is present\n"
	Daily_wage=$(($Wage_per_hour*$Full_day_hour))
	Monthly_wage=$(($Daily_wage*$Month_work_days))
	echo "Employee Daily wage is " $Daily_wage  
	echo "Employee Monthly wage is " $Monthly_wage
	Total_work_hours=$(($Total_work_hours+$Full_day_hour))
	;;

	1)
	echo -e "\nEmployee working partime\n"
	Daily_wage=$(($Wage_per_hour*$Half_day_hour))
        Monthly_wage=$(($Daily_wage*$Month_work_days))
        echo "Employee Daily wage is " $Daily_wage
	echo "Employee Monthly wage is " $Monthly_wage
        Total_work_hours=$(($Total_work_hours+$Half_day_hour))
	;;

	2)
	echo -e "\nEmployee is absent"
	;;
esac
Total_work_days=$(($Total_work_days+1))
done
echo $Total_work_hours
echo $Total_work_days
