#!/bin/bash 
read -p " plz enter value FOR B:" b
read -p " plz enter value FOR C:" c
read -p " plz enter value FOR A:" a
ans1=$(( ($a+$b)*$c ))
ans2=$(( ($a%$b)+$c ))
