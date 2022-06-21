echo -e "Welcome to Employee Wage Computation Program\n\n"


Month_work_days=20
Daily_wage=0
Monthly_wage=0
Total_work_hours=0
Total_work_days=0
Wage_per_hour=20
Half_day_hour=4
Full_day_hour=8

function gethours(){

			a=$((RANDOM%3))
			case $a in
					0)
						dailyhr=$Full_day_hour
						;;
					1)
						dailyhr=$Half_day_hour
						;;
					2)
						dailyhr=0
						;;
			esac
			echo $dailyhr
			}



while [ $Total_work_hours -le 100 ] && [ $Total_work_days -le 20 ]
do


	hr=$(gethours) 
	Daily_wage=$(($Wage_per_hour*$hr))
	Total_work_hours=$(($Total_work_hours+$hr))
	Monthly_wage=$(($Daily_wage*$Month_work_days))
	Total_work_days=$(($Total_work_days+1))

done
echo $Total_work_hours
echo $Total_work_days


