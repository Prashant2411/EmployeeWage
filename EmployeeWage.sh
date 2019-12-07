#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program"

WAGE_PER_HOUR=20
workingHour=0
totalHrs=0
FULL_DAY=2
HALF_DAY=1
day=1
while (( $day <= 20 && $totalHrs < 100 ))
do
	isPresent=$(( RANDOM%3 ))
	case $isPresent in
		$FULL_DAY )
			echo "Full Day"
			workingHour=8
			echo "Daily Wage: $dailyWage";;
		$HALF_DAY )
			echo "Half Day"
			workingHour=4
			dailyWage=$(( $WAGE_PER_HOUR * $workingHour ))
			echo "Daily Wage: $dailyWage";;
		* )
			echo "Absent"
			echo "Daily Wage: $dailyWage"
			workingHour=0;;
	esac
	day=$(( $day + 1 ))
	dailyWage=$(( $WAGE_PER_HOUR * $workingHour ))
	totalHrs=$(( $totalHrs + $workingHour ))
done
echo $totalHrs
