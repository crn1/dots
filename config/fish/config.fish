function chpwd --on-variable PWD
  status --is-command-substitution; and return
  ls
end
