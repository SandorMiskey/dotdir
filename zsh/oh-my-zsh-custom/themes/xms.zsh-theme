#
# colour based on hostname
#

case $( hostname ) in
	testnet )
		base_colour="%{$fg_bold[yellow]%}"
		;;
	mainnet | pigtrace | prod )
		base_colour="%{$fg_bold[red]%}"
		;;
	* )
		base_colour=""
		;;
esac

#
# appearance of the git part of the prompt
#

ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX="$base_colour%S:%s"
ZSH_THEME_GIT_PROMPT_SEPARATOR="$base_colour%S|%s"
ZSH_THEME_GIT_PROMPT_BRANCH="$base_colour%S"
ZSH_THEME_GIT_PROMPT_STAGED="$base_colour%{$bg[blue]%}%S*"
ZSH_THEME_GIT_PROMPT_CONFLICTS="$base_colour%{$bg[red]%}%Sx"
ZSH_THEME_GIT_PROMPT_CHANGED="$base_colour%{$bg[red]%}%S+"
ZSH_THEME_GIT_PROMPT_BEHIND="$base_colour%S%{↓%G%}"
ZSH_THEME_GIT_PROMPT_AHEAD="$base_colour%S%{↑%G%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="$base_colour%{$bg[red]%}%{…%G%}"
ZSH_THEME_GIT_PROMPT_CLEAN="$base_colour%S%{✓%G%}"

#
# default prompts
#

PROMPT='$base_colour%S%~ %#%s%{$reset_color%} '
RPS1='$base_colour%S%n@%m:%s$(git_super_status)%S%!%s%{$reset_color%}'
if [[ -n $SSH_CONNECTION ]]; then
	PROMPT='$base_colour%S%n@%m:%~ %#%s%{$reset_color%} '
	RPS1='$base_colour$(git_super_status)%S%!%s%{$reset_color%}'
fi

#
# final
#

export ZSH_THEME_GIT_PROMPT_CACHE=yes
export PROMPT RPS1

