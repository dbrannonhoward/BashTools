#!/bin/bash
function one_way {
	echo "this is one way"
}
another_way () {
	echo "this is another"
}
echo "there are a two ways to declare a function"
one_way
another_way
