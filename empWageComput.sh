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

#Function for Working Hrs
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
	workingHrs=$( getWorkHrs $isPresent )
   dailyWage[totalWorkingDays]=$(( $WAGE_PER_HOURS * $workingHrs ))
	totalWage=$(( $totalWage + ($WAGE_PER_HOURS * $workingHrs) ))
	totalDailyWage[$totalWorkingDays]=$totalWage
   totalWorkingHrs=$(( $totalWorkingHrs + $workingHrs ))
done

for (( i=0; i<$totalWorkingDays; i++ ))
do
	echo ${dailyWage[$i]}" "${totalDailyWage[$i]}
done

echo $totalWage
echo ${dailyWage[@]}

echo ${totalDailyWage[@]}
