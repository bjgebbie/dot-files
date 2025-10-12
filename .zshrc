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
fuzkill() {
    pid=$(ps -e | fzf | awk '{print $1}') &&
    kill -9 $pid &&
    echo "[$pid] Killed With Signal 9"
}

alias pi="sudo pacman -Sy"
alias vim="nvim"
alias ls="eza -1halrb --icons --group-directories-first --total-size"

bindkey -v

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

eval "$(zoxide init bash)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

