#!/bin/bash
sum () {
	sum_=$(($1+$2))
	return $sum_ 
}

result () {
	echo "the result is $?"
}
sum 12 13
result
