#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program"

WAGE_PER_HOUR=20
workingHour=8
isPresent=$(( RANDOM%2 ))
if [ $isPresent -eq 1 ]
then
	echo "Present"
	dailyWage=$(( $WAGE_PER_HOUR * $workingHour ))
	echo "$dailyWage"
else
	echo "Absent"
fi
