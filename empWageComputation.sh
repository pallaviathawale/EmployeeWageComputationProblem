echo "Welcome to Employee Wage Computation Program"
﻿function getWorkHours()
{
        local startTime=$1
        local endTime=$2
        local ratePerHour=$3

        local startHour=$(echo $startTime | awk -F: '{print $1}')
        local endHour=$(echo $endTime | awk -F: '{print $1}')

        local workHours=$((endHour-startHour))
        local dailyWage=$((workHours*ratePerHour))
        echo "$dailyWage"
}

startTime="09:00"
endTime="17:00"
ratePerHour=20

totalWage=0
workingDays=20

for ((day=1; day<=workingDays; day++))
do
        dailyWage=$(getWorkHours "$startTime" "$endTime" $ratePerHour)
        totalWage=$((totalWage+dailyWage))
done

echo "Total wage: $totalWage"
