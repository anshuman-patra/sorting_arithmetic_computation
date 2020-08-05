#!/bin/bash  
read -p " plz enter value FOR B:" b
read -p " plz enter value FOR C:" c
read -p " plz enter value FOR A:" a
ans1=$(( ($a+$b)*$c ))
ans2=$(( ($a%$b)+$c ))
ans3=$(( ($a+$c)/$b ))
ans4=$(( ($a*$b)+$c ))
declare -A answer
answer[0]=$ans1
answer[1]=$ans2
answer[2]=$ans3
answer[3]=$ans4
echo "value in dictionary" ${answer[@]}
n=${#answer[@]}
declare -a   sol 
for(( l=0 ; l<$n; l++ ))
do
sol[l]=${answer[$l]}
sol1[l]=${answer[$l]}
done
echo "value in array"${sol[@]}
for ((  k=0; k<$n ;k++ ))
do
for ((  m=0; m<$n ;++m ))
do
if [[ ${sol1[k]} -gt  ${sol1[m]} ]]
then
a=${sol1[k]}
sol1[k]=${sol1[m]}
sol1[m]=$a
fi
done
done
echo "values in  decending order"
echo ${sol1[@]}
for ((i = 0; i<$n; i++)) 
do
 for((j = 0; j<$n-i-1; j++))
    do

        if [ ${sol[j]} -gt ${sol[$((j+1))]} ]
        then
            # swap
            temp=${sol[j]}
            sol[$j]=${sol[$((j+1))]}
            sol[$((j+1))]=$temp
        fi
    done
done
echo "values in  accending  order"
echo ${sol[@]}
