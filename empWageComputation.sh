#!/bin/bash

#constants
EMP_RATE_PER_HR=20
FULL_TIME_HRS=2
PART_TIME_HRS=1

#varibles
empCheck=$((RANDOM%2))


if [ $empCheck -eq $FULL_TIME_HRS ]
then
		empHrs=8
elif [ $empCheck -eq $PART_TIME_HRS ]
then
		empHrs=4
else
		empHrs=0
fi

salary=$(($empHrs*$EMP_RATE_PER_HR))
echo $salary
