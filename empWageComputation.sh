echo "Welcome to Employee Wage Computation Program"
﻿
function getWorkHours()
{
        local startTime=$1
        local endTime=$2

        local startHour=$(echo $startTime | awk -F: '{print $1}')
        local endHour=$(echo $endTime | awk -F: '{print $1}')

        local workHours=$((endHour-startHour))
        echo "Work hours: $workHours"
}

startTime="09:00"
endTime="17:00"

getWorkHours "$startTime" "$endTime"
