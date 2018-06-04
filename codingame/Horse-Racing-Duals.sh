#####myHeritage DevOps Interview######
#####codingame Horse-racing Duals Bash Solution####


#####Input Values
read number_of_horses
declare -a array_of_horses_power

#####Set values in horses array
for((i=0 ; i<number_of_horses ; i++))
do
    read horse_number
    array_of_horses_power[$horse_number]=0
done

#####Sort the Horses array
array_of_horses_powerLength=${#array_of_horses_power[@]}

#####Check the constraints
if [[ $number_of_horses -eq 0 ]] || [[ $array_of_horses_powerLength -ne $number_of_horses ]]
then
    minDiff=0
else
    minDiff=10000000
    previous=-1
	

#####Find the minDiff    
    for i in ${!array_of_horses_power[@]}
    do
        diff=$(( $i - $previous ))
        
        if [[ $previous -ne -1 ]] && [[ $diff -lt $minDiff ]]
        then 
            minDiff=$(($i-$previous))
        fi
        
        previous=$i
    done
fi

#####Print the minDiff founded
echo $minDiff