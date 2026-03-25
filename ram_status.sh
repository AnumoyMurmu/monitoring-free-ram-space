#!/bin/bash

free_space=$( free -mt | grep "Total" | awk '{print $4}')

threshold=22000

if [[ $free_space -lt $threshold ]]
then
	echo "Warning! RAM is running low -$free_space"
else
	echo "RAM space is sufficient -$free_space"
fi











