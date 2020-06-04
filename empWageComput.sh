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

while [[ $totalWorkingHrs -lt 100 && $totalWorkingDays -lt 20 ]]
do

	isPresent=$(( RANDOM % 3 ))
	((totalWOrkingDays++))

		case $isPresent in
			$PRESENT)
				echo "Present"
				dilyWage=$(( $WAGE_PER_HOURS * $WORKING_HOURS ))
				totalWage=$(( $totalWage + $dailyWage ))
				totalWorkingHrs=$(( $totalWorkingHrs + $WORKING_HOURS )
				;;
			$PART_TIME)
				echo "Part time"
				dailyWage=$(( $WAGE_PER_HOURS * $PART_TIME_HOURS ))
				totalWage=$(( $totalWage + $dailyWage ))
				totalWorkingHrs=$(( $totalWorkingHrs + $WORKING_HOURS )
				;;
			$ABSENT)
				echo "Absent"
				;;
		esac
done

echo $totalWage
