# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/m3cool/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload -Uz run-help
autoload -Uz run-help-git
autoload -Uz promptinit

promptinit
prompt grml

