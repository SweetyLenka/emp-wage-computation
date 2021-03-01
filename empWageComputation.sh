#!/bin/bash

#constants
EMP_RATE_PER_HR=20
FULL_TIME_HRS=8

#varibles
empCheck=$((RANDOM%2))
isPresent=1

if [ $empCheck -eq $isPresent ]
then
echo salary=$(($EMP_RATE_PER_HR*$FULL_TIME_HRS))
else
		echo "Employee is absent"
fi

