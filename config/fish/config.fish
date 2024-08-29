function chpwd --on-variable PWD
	status --is-command-substitution; and return
	ls
end

if status --is-login
	startx
end
