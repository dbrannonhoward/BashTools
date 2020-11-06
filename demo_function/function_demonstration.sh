#!/bin/bash
echo "there are a two ways to declare a function"
function one_way_to_declare_a_function {
	echo "this is one way to declare a function"
}
another_way_to_declare_a_function () {
	echo "this is another way to declare a function"
}
arg_processor () {
	echo "arg : $1"
}
arg_returner () {
	var=$1
	return $var
}
echo -e "the functions must be declared on a line 'above' where they are called"
one_way_to_declare_a_function
another_way_to_declare_a_function
arg_processor potato
arg_returner 2
echo "the returned value was $?"
