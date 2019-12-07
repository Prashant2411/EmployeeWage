#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program"

WAGE_PER_HOUR=20
workingHour=0
totalHrs=0
FULL_DAY=2
HALF_DAY=1
day=1

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
	dailyWage=$(( $WAGE_PER_HOUR * $workingHour ))
	echo $workingHour
}

function main () {
	while (( $day <= 20 && $totalHrs < 100 ))
	do
		workingHour=$(getWorkHour)
		totalHrs=$(( $totalHrs + $workingHour ))
		day=$(( $day + 1 ))
	done
	echo $totalHrs
}

main


