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
for(( i=0 ; i < $n; i++ ))
do
sol[i]=${answer[$i]}
done
echo "value in array"${sol[@]}

