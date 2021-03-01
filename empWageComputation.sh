#!/bin/bash -x

#constants
EMP_RATE_PER_HR=20
FULL_TIME_HRS=2
PART_TIME_HRS=1
NO_WORKING_DAYS=20
MAX_HRS=100

#varibles
totalEmpHrs=0
totalWorkingDays=0

function getWorkingHrs()
{
   case $1 in
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
   echo $empHrs

}
while [[ $totalEmpHrs -lt $MAX_HRS && $totalWorkingDays -lt $NO_WORKING_DAYS ]]
do
   ((totalWorkingDays++))
   empCheck=$((RANDOM%3))
   empHrs=$( getWorkingHrs $empCheck )
   totalEmpHrs=$(($totalEmpHrs+$empHrs))

done

totalSalary=$(($totalEmpHrs*$EMP_RATE_PER_HR))
echo $totalSalary
