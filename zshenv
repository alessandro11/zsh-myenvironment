# Set wide relative path to zsh; however .zprofile has no been
# sourced as documentation says, that is sourced automatically
# that why a seted below.
#
export ZDOTDIR="$HOME"
export GTAGSLIBPATH="$HOME/.gtags/"
export PATH="$PATH:$HOME/.local/bin:/opt/bin"
export EDITOR="vim"

# Get aliases
#[ -s "$ZDOTDIR/.zsh_aliases" ] && source "$ZDOTDIR/.zsh_aliases"

# Get profile
[ -s "$ZDOTDIR/.zprofile" ] && source "$ZDOTDIR/.zprofile"
