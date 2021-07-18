########################################X########################################
# auto run start								#
echo "this terminal opened on "$(date)						#
# auto run end									#
########################################X########################################
#				  G L O B A L S					#
HOME="~/"									#
#										#
THIS=$HOME".bash_aliases"							#
PATH_BASH=$HOME"project_bash/"							#
PATH_PY=$HOME"project_py/"							#
#										#
proj_ba=$PATH_BASH"bash_tools/"							#
proj_py_dm=$PATH_PY"data_merger"						#
proj_py_qb=$PATH_PY"qbit_tools"							#
#				  G L O B A L S					#
########################################X########################################
#				  A L I A S E S 				#
# cd										#
alias go2="less "$THIS" | grep go2"						#
alias go2ba="cd "$PATH_BASH							#
alias go2py="cd "$PATH_PY							#
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
alias forgot="less "$THIS							#
alias lazy="vim "$THIS								#
#				  A L I A S E S 				#
########################################X########################################

