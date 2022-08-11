#!/bin/bash

filename=$1 
number_of_line=$(wc -l < $filename)
line=$(( number_of_line/2 ))
status=$(( number_of_line%2 ))
if [[ $status != 0 ]]
then
     line=$(( line+1 ))
fi     
awk -v a="$line" '{if(NR==a) print $0}' $filename
