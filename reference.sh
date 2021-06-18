#!/bin/bash
clear
# README
# - the purpose of this script : to demonstrate
#     concise and clear examples of various common 
#     syntax patterns, organized by topic

announce() {
  local section=${1:?must provide a section argument}
  read -n 1 -p "the next section is $section, press enter to continue"}

# topic, example :
#   1. declare section=NAME
#   2. optional, delimit with runtime interaction via announce()
#   3. echo title, echo description
#   4. demonstrate syntax of title topic
section="example"
announce $section
echo "echo example, an example of echo"
echo "$PWD is the current directory"

# topic, next :

