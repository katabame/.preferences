if status is-interactive
	# disable greeting
	set fish_greeting

	# homebrew
	fish_add_path /opt/homebrew/bin/
	fish_add_path /opt/homebrew/sbin/

	# postgresql
	fish_add_path /opt/homebrew/opt/postgresql@15/bin
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /opt/homebrew/Caskroom/miniconda/base/bin/conda
    eval /opt/homebrew/Caskroom/miniconda/base/bin/conda "shell.fish" "hook" $argv | source
end
# <<< conda initialize <<<

