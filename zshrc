export PATH=$PATH:/usr/bin
export LANG=en_US.utf8
export LC_ALL=en_US.utf8
export LC_CTYPE=en_US.utf8

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

#POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_COLOR_SCHEME='light'
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

# `vcs` color customization
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='white'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='black'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='while'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='red'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='black'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='yellow3'

# `vi_mode` color customization
POWERLEVEL9K_VI_MODE_INSERT_FOREGROUND='teal'

source /usr/share/fonts/awesome-terminal-fonts/fontawesome-regular.sh

POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
#POWERLEVEL9K_FOLDER_ICON="\u$CODEPOINT_OF_AWESOME_FOLDER"
#POWERLEVEL9K_VCS_BRANCH_ICON=$'\uF126 '
#POWERLEVEL9K_VCS_GIT_GITHUB_ICON=

#promptinit
source '/usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme'

# Get aliases
[ -s "$ZDOTDIR/.zsh_aliases" ] && source "$ZDOTDIR/.zsh_aliases"

# I have no idea what is going on. It seems .zshenv loads
# automatically, however CTRL + {LEFT/RIGHT, HOME/END} does not work,
# when i load it from below it works. It seems if you load twice, it
# works. Also in the .Xresources needs to be set as well.
[ -f "$ZDOTDIR/.zshenv" ] && source "$ZDOTDIR/.zshenv"

# Load X if logged from tty1
if [ "`tty`" = "/dev/tty1" ] && [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
    exec startx -- :0 -keeptty -novtswitch -noreset -verbose 3 -nolisten tcp
fi

