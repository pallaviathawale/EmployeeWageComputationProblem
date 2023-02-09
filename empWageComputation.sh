echo "Welcome to Employee Wage Computation Program"
﻿
empRatePerHr=20; 
totalsalary=0;
totalWorkingHrs=0;
numofWorkingDays=20;
days=1;
	while [[ $day -le 20 && $totalWorkingHrs -lt 100 ]] 
	do 
		attendance=$((RANDOM%3));

		case $attendance in 
		  1) 
		   empHrs=8;;  
		  2)
		   empHrs=4;;  
		  *)
		   empHrs=0;;
		esac
	totalWorkingHrs=$(($totalWorkingHrs+$empHrs))

		if [ $totalWorkingHrs -gt 100 ]
		 then
		   totalWorkingHrs=$(($totalWorkingHrs-$empHrs))
		 break;
		fi
		   salary=$(($empHrs*$empRatePerHr))
		   totalSalary=$(($totalSalary+$salary))
		   ((day++))
	done
		echo "Employee has earned $totalSalary in a month(total working hours: $totalWorkingHrs)";
