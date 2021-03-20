#!/bin/bash
echo -e "there are a two ways to declare a function\n"
function one_way_to_declare_a_function {
	echo "this is one way to declare a function"
}

another_way_to_declare_a_function () {
	echo "this is another way to declare a function"
}
one_way_to_declare_a_function && another_way_to_declare_a_function

arg_processor () {
	echo "your arg was : $1"
}

arg_returner () {
	var=$1
	return $var
}

arg_reader () {
	echo "the most recently returned value was $?"
}
arg_processor potato && arg_returner 2 && arg_reader

echo -e "\nnote : the functions must be declared on a line 'above' where they are called"
