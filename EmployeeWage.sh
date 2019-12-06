#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program"

WAGE_PER_HOUR=20
fullDayWorkingHour=8
halfDayWorkingHour=4
FULL_DAY=2
HALF_DAY=1
isPresent=$(( RANDOM%3 ))
case $isPresent in
	$FULL_DAY )
		echo "Full Day"
		dailyWage=$(( $WAGE_PER_HOUR * $fullDayWorkingHour ))
		echo "Daily Wage: $dailyWage";;
	$HALF_DAY )
		echo "Half Day"
		dailyWage=$(( $WAGE_PER_HOUR * $halfDayWorkingHour ))
		echo "Daily Wage: $dailyWage";;
	* )
		echo "Absent";;
esac
