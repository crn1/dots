# General configuration
set fish_greeting

# Terminal Abbreviations
abbr --add s sudo
abbr --add c clear
abbr --add x exit
abbr --add q exit
abbr --add .. cd ..
abbr --add ... cd ...
abbr --add .... cd ....
abbr --add ..... cd .....

# Program Execution Abbreviations
abbr --add v vim
abbr --add r ranger
abbr --add py python
abbr --add trans "python ~/syncthing/transactor/transactor.py"

# Machine Control Abbreviations
abbr --add of sudo poweroff
abbr --add off sudo poweroff
abbr --add rs sudo shutdown -r now

# Git Abbreviations
abbr --add ga git add
abbr --add ga. git add .
abbr --add gc git clone
abbr --add gl git log
abbr --add gs git status
abbr --add gm git commit
abbr --add gmm git commit -m
abbr --add gmm git commit -m
abbr --add gp git push
abbr --add gpom git push origin master

# Espanso Abbreviation
abbr --add eu "cd ~/dots/config/espanso/match && git pull"

function chpwd --on-variable PWD
	status --is-command-substitution; and return
	ls
end
