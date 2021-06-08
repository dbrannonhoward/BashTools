#!/bin/bash
declare_all_values () {
	echo the value of g_var1 is $g_var1
	echo the value of g_var2 is $g_var2
	echo the value of l_var1 is $l_var1
	echo the value of l_var2 is $l_var2
}
var_printer () {
	local l_var1='l_var1'
	local l_var2='l_var2'
	echo -e "\nthis call is local"
	declare_all_values
}
g_var1='g_var1'
g_var2='g_var2'
var_printer 
echo -e "\nthis call is global"
declare_all_values
