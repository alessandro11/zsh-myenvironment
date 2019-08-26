# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=65536
SAVEHIST=65536

bindkey -e
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
source '/usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme'

# Get aliases
[ -s "$ZDOTDIR/.zsh_aliases" ] && source "$ZDOTDIR/.zsh_aliases"

# I have no idea what is going on. It seems .zshenv loads
# automatically, however CTRL + {LEFT/RIGHT, HOME/END} does not work,
# when i load it from below it works. It seems if you load twice, it
# works. Also in the .Xresources needs to be set as well.
[ -f "$ZDOTDIR/.zshenv" ] && source "$ZDOTDIR/.zshenv"

# Load X if logged from tty1
#if [ "`tty`" = "/dev/tty1" ] && [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
#    exec startx -- :0 -keeptty -novtswitch -noreset -verbose 3 -nolisten tcp
#fi
#
