# General configuration
set fish_greeting

# Terminal Abbreviations
abbr --add s sudo
abbr --add c clear
abbr --add x exit
abbr --add .. cd ..
abbr --add ... cd ...
abbr --add .... cd ....
abbr --add ..... cd .....

# Program Execution Abbreviations
abbr --add v vim
abbr --add r ranger

# Machine Control Abbreviations
abbr --add of sudo poweroff
abbr --add off sudo poweroff
abbr --add rs sudo shutdown -r now

# Git Abbreviations
abbr --add ga git add
abbr --add gc git clone
abbr --add gl git log
abbr --add gs git status

# Espanso Abbreviation
abbr --add eu "cd ~/dots/config/espanso/match && git pull"

function chpwd --on-variable PWD
	status --is-command-substitution; and return
	ls
end

if status --is-login
	startx
end
