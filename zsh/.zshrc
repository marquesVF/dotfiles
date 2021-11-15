export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="kolo"

plugins=(
    git
    macos
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

bindkey "[C" forward-word
bindkey "[D" backward-word

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export LC_ALL=en_US.UTF-8

# GIT ALIAS
alias hgit="git for-each-ref --sort=committerdate refs/heads/ --format='%(committerdate:short) %(refname:short)'"
alias hgito="git for-each-ref --sort=committerdate refs/remotes/origin/ --format='%(committerdate:short) %(refname:short)'"
alias gcs="git checkout staging"
alias gcd="git checkout developer"
alias gwip="git add . && git commit -m 'WIP'"
alias gane="git add . && git commit --amend --no-edit"
alias gpushd="git push -u origin HEAD"
alias glg="git log"
alias gch="git checkout $1"
alias gda="git add ."
alias grest="git restore --staged ."
alias gundo="git reset --soft HEAD^ && grest"

alias clip="xclip -selection c"

alias vim="nvim"

# fnm
export PATH=/home/vini/.fnm:$PATH
eval "`fnm env --multi`"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
