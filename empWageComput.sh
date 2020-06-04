!/bin/bash

echo "Welcome to Employee Wage Computation"

#Constant
WAGE_PER_HOURS=20
WORKING_HOURS=8
PART_TIME_HOURS=4
ABSENT=0
PRESENT=1
PART_TIME=2
WORKING_DAY_PER_MONTH=20

#variable
totalWage=0
totalWorkingHrs=0
totalWorkingDays=0

function getWorkHrs(){

	local empCheck=$1
	case $empCheck in
		$PRESENT)
			empHrs=8
		;;
		$PART_TIME)
			empHrs=4
		;;
		$ABSENT)
			empHrs=0
		;;
	esac
	echo $empHrs
}

while [[ $totalWorkingHrs -lt 100 && $totalWorkingDays -lt 20 ]]
do

	isPresent=$(( RANDOM % 3 ))
	((totalWOrkingDays++))
	dilyWage=$(( $WAGE_PER_HOURS * $WORKING_HOURS ))
	totalWage=$(( $totalWage + $dailyWage ))
	totalWorkingHrs=$(( $totalWorkingHrs + $WORKING_HOURS )
done

echo $totalWage
