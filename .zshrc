if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
export FZF_BASE="$(which fzf)"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
	git
    fzf
)

source $ZSH/oh-my-zsh.sh

alias ff="firefox& 2> /dev/null"
alias pi="sudo pacman -Sy"
alias vim="nvim"
alias vi="vim"
alias gadf="git add \
    README.md \
    .bashrc \
    .p10k.zsh \
    .zshrc \
    .config/rofi/launchers/type-5/style-4.rasi \
    .config/rofi/launchers/type-5/launcher.sh \
    .config/kitty/ \
    .config/hypr/ \
    .config/waybar/ \
"

bindkey -v

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
