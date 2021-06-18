#!/bin/bash
clear
# README
# - the purpose of this script : to demonstrate
#     concise and clear examples of various common 
#     syntax patterns, organized by topic

announce() {
  local section=${1:?must provide a section argument}
  echo -e "\n"
  read -n 1 -p "the next section is $section, press enter to continue"
}

# topic, example :
#   1. declare section=NAME
#   2. optional, delimit with runtime interaction via announce()
#   3. echo title, echo description
#   4. demonstrate syntax of title topic
section="example"
announce $section
echo "echo command example, an example of the echo command"
echo "the current directory is : $PWD"

# topic, array :
section="array"
announce $section
echo "array init, how to save an array to a variable"
echo "TODO"

