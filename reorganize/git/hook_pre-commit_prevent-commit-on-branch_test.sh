#!/bin/bash
a="a"
if [ -f $"a" ]; then
	echo -e "\tdeleting $a"
	rm a
fi
touch a && git add a && git commit -m 'a'
rm a
