export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH
export PATH=/usr/local/Cellar/:/opt/homebrew/bin:/opt/homebrew/Cellar/:$PATH

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
	source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

__conda_setup="$('/Users/gregory/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
	eval "$__conda_setup"
else
	if [ -f "/Users/gregory/miniconda3/etc/profile.d/conda.sh" ]; then
		. "/Users/gregory/miniconda3/etc/profile.d/conda.sh"
	else
		export PATH="/Users/gregory/miniconda3/bin:$PATH"
	fi
fi
unset __conda_setup

eval "$(zoxide init zsh)"
alias ls="eza --color=always --long --no-filesize --icons=always --no-time --no-user --no-permissions"
