set -x PYTHONSTARTUP ~/.pythonrc
function ls
	eval (which ls)" --color=auto --group-directories-first -h $argv"
end
