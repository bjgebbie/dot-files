if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
export FZF_BASE="$(which fzf)"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
	git
    fzf
    zsh-syntax-highlighting
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

alias ff="firefox& 2> /dev/null"
alias pi="sudo pacman -Sy"
alias vim="nvim"
alias vi="vim"

bindkey -v

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
