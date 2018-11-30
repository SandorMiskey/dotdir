if [[ -n $SSH_CONNECTION ]]; then
	PROMPT='%S%n@%m:%~ %#%s '
	RPS1='%S%!%s'
else
	PROMPT='%S%~ %#%s '
	RPS1='%S%n@%m:%!%s'
fi

if [[ $( hostname ) == *"prod"* ]]; then
	PROMPT="%{$bg[red]%}%n@%m:%~ %#%{$reset_color%} "
	RPS1="%{$bg[red]%}%!%{$reset_color%}"
fi

export PROMPT RPS1

