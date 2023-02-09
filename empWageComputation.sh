echo "Welcome to Employee Wage Computation Program"
empRatePerHr=20;
totalSalary=0;
numofWorkingDays=20;
for (( day=1; day<=$numofWorkingDays; day++ ))
do
 attendance=$((RANDOM%3));
 case $attendance in
 1)
  empHrs=8;;
 2)
  empHrs=4;;
 *)
  empHrs=0;
 esac
salary=$(($empHrs*$empRatePerHr))
totalSalary=$(($totalSalary+$salary))
done
echo "Employee has earned $totalSalary in a month";

