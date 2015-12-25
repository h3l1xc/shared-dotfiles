function fish_prompt
	set_color green --bold
	echo -n "fish "
	set_color yellow --bold
	if [ (pwd) = ~$USER ]
		echo -n "~ "
	else
		echo -n (basename (pwd))" "
	end
	set_color white --bold
	if [ (whoami) = root ]
		echo -n "# "
	else
		echo -n "\$ "
	end
	set_color normal
end
