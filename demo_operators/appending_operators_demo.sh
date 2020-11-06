append_to_array () {
	l_var=$1
	echo "array[@] : "${l_var[@]}
	l_var+=(18)
	echo "array[0] : "${l_var[0]}
	echo "array[1] : "${l_var[1]}
	echo "array[@] : "${l_var[@]}
}
append_to_integer () {
	l_var=$1
	echo "l_var : "$l_var
	((l_var+=15))
	echo "((l_var + 15)) : "$l_var
	l_var+=30
	echo "l_var + 30 : "$l_var
}
append_to_string () {
	l_var=$1
	l_var+=" appender function"
	echo $l_var
}
demo () {
	a='hello'
	b='world'
	echo "${a} ${b}"
	a+=" planet"
	echo $a
}
array_a=3
int_b=1
string_c="hello"
append_to_array $array_a
append_to_integer $int_b
append_to_string $string_c
demo
