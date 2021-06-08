#!/bin/bash
for VAR in 1 2 3
do
	echo $VAR
done

for (( i=0; i<3; i++ ))
do
	echo -e "\n"$i
done

#for (( ; ; ))
#do
#	echo infinite loop
#done
