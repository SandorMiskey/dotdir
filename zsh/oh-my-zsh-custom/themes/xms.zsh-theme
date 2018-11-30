if [[ -n $SSH_CONNECTION ]]; then
	PROMPT='%S%n@%m:%~ %#%s '
	RPS1='%S%!%s'
else
	PROMPT='%S%~ %#%s '
	RPS1='%S%n@%m:%!%s'
fi

export PROMPT RPS1

