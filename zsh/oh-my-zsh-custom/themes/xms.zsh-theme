#
# colour based on hostname
#

case $( hostname ) in
	*testnet* )
		base_colour="%{$bg[yellow]%}"
		;;
	*mainnet* | pig* | prod )
		base_colour="%{$bg[red]%}"
		;;
	* )
		base_colour="%S"
		;;
esac

#
# appearance of the git part of the prompt
#

ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX="$base_colour:%s"
ZSH_THEME_GIT_PROMPT_SEPARATOR="$base_colour|%s"
ZSH_THEME_GIT_PROMPT_BRANCH="$base_colour"
ZSH_THEME_GIT_PROMPT_STAGED="$base_colour%{$bg[blue]%}*"
ZSH_THEME_GIT_PROMPT_CONFLICTS="$base_colour%{$bg[red]%}x"
ZSH_THEME_GIT_PROMPT_CHANGED="$base_colour%{$bg[red]%}+"
ZSH_THEME_GIT_PROMPT_BEHIND="$base_colour%{↓%G%}"
ZSH_THEME_GIT_PROMPT_AHEAD="$base_colour%{↑%G%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="$base_colour%{$bg[red]%}%{…%G%}"
ZSH_THEME_GIT_PROMPT_CLEAN="$base_colour%{✓%G%}"

#
# default prompts
#

PROMPT='$base_colour%~ %#%s%{$reset_color%} '
RPS1='$base_colour%n@%m:%s$(git_super_status)%S%!%s%{$reset_color%}'
if [[ -n $SSH_CONNECTION ]]; then
	PROMPT='$base_colour%n@%m:%~ %#%s%{$reset_color%} '
	RPS1='$base_colour$(git_super_status)$base_colour%!%{$reset_color%}'
fi

#
# final
#

export ZSH_THEME_GIT_PROMPT_CACHE=yes
export PROMPT RPS1

