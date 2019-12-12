#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program"

WAGE_PER_HOUR=20
FULL_DAY=2
HALF_DAY=1

workingHour=0
totalHrs=0
day=1

declare -A dailyWageDict

function getWorkHour () {
	isPresent=$(( RANDOM%3 ))
	case $isPresent in
		$FULL_DAY )
			workingHour=8;;
		$HALF_DAY )
			workingHour=4;;
		* )
			workingHour=0;;
	esac
	echo $workingHour
}
function getDailyWage () {
	dailyWage=$(( $WAGE_PER_HOUR * $1 ))
	echo $dailyWage
}

function main () {
	while (( $day <= 20 && $totalHrs < 100 ))
	do
		workingHour=$(getWorkHour)
		totalHrs=$(( $totalHrs + $workingHour ))
		dailyWage=$(getDailyWage $workingHour)
		totalWage=$(( $WAGE_PER_HOUR * $totalHrs ))
		dailyWageDict[Day$day]="$dailyWage	$totalWage"
		#totalWageArr[$day]=$totalWage
		day=$(( $day + 1 ))
	done
	for (( i=1;i<$day;i++ ))
	do
		echo "Day $i		${dailyWageDict[Day$i]}"
	done
}

main


