########################################X########################################
# nudge theory self-ping ~/.bash_aliases					#
alias "make! more! aliases!=hey, welcome back"					#
alias 'reno 911 dummy'								#
########################################X########################################
#				  G L O B A L S					#
home="~/"									#
#										#
this=$home".bash_aliases"							#
path_ba=$home"project_ba/"							#
path_py=$home"project_py/"							#
#										#
proj_ba=$path_ba"bash_tools/"							#
#										#
proj_py_dm=$path_py"data_merger"						#
proj_py_qb=$path_py"qbit_tools"							#
#				  G L O B A L S					#
########################################X########################################
#				  A L I A S E S 				#
# cd										#
alias go2="less "$this" | grep go2"						#
alias go2ba="cd "$path_ba							#
alias go2py="cd "$path_py							#
alias go2qb='cd '$proj_py_qb							#
# cd py										#
alias go2dm="cd "$proj_py_dm							#
alias go2qb="cd "$proj_py_qb							#
# git										#
alias cgd="clear && git status && git diff"					#
alias cgs="clear && git status"							#
alias gca="git config --list --show-origin"					#
alias gcga="git config --global --list --show-origin"				#
alias gdog="git log --all --decorate --oneline --graph"				#
alias gfsb="clear && git fetch && git status && git branch"			#
# ls										#
alias clh="clear && ls -hl"							#
alias laa="ls -hal"								#
alias lhl="ls -hl"								#
# python									#
alias venvqb='source venv/bin/activate'						#
# system									#
alias c="clear"									#
alias f="nemo ."								#
alias e="exit"									#
alias rbt="systemctl reboot -i"							#
# vim										#
alias forgot="less "$this							#
alias lazy="vim "$this								#
#				  A L I A S E S 				#
########################################X########################################

