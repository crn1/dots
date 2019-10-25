TERM=xterm; 	export TERM

EDITOR=vim;   	export EDITOR
PAGER=less;  	export PAGER

# Query terminal size; useful for serial lines.
if [ -x /usr/bin/resizewin ] ; then /usr/bin/resizewin -z ; fi
