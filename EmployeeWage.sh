#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program"

isPresent=$(( RANDOM%2 ))
if [ $isPresent -eq 1 ]
then
	echo "Present"
else
	echo "Absent"
fi
