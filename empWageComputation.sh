#!/bin/bash -x

#constants
EMP_RATE_PER_HR=20
FULL_TIME_HRS=2
PART_TIME_HRS=1

#varibles
empCheck=$((RANDOM%2))


case $empCheck in 
					$FULL_TIME_HRS)
						empHrs=8
						;;
					$PART_TIME_HRS)
						empHrs=4
						;;
					*)
						empHrs=0
						;;
esac

salary=$(($EMP_RATE_PER_HR*$empHrs))
echo $salary
