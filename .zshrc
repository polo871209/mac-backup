# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
source ~/.zsh/plugins/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.zsh/.p10k.zsh ]] || source ~/.zsh/.p10k.zsh

# Autocomplete
source <(kubectl completion zsh)
source <(docker completion zsh)

# ENV
export GOPATH=~/go
export PATH=$PATH:$GOPATH/bin

# Functions
catcopy() {
    cat "$@" | pbcopy
    cat "$@"
}

pwdcopy() {
    pwd "$@" | pbcopy
}

# aliases
# quick navigation
alias app="cd ~/app"
alias doc="cd ~/Documents"
alias down="cd ~/Downloads"
# docker
alias dt="docker build -t test .&&docker run -d --rm -p 80:80 -p 443:443 -p 8080:8080 -p 3000:3000 --name test test"
alias dst="docker stop test"
# tool replacement
alias cat='catcopy'
alias pwd="pwdcopy"
alias ls="eza --group-directories-first -a --icons"
# shortend commands
alias brewup="brew update && brew upgrade && brew cleanup"
alias c="code ."
alias caffee="caffeinate -d"
alias cr="code -r ."
alias k="kubectl"
alias o="open ."
alias p="poetry"
alias pa="poetry add"
alias t="terraform"
# other
alias sz="source ~/.zshrc"