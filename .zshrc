# A barebones zshrc, not really much here yet.

# Global Programs
export BROWSER="firefox"
export EDITOR="nvim"

# Aliases
alias dotto='/usr/bin/git --git-dir=$HOME/projects/dots/ --work-tree=$HOME'

# Programs that should always be running.
prog=('mpd')
for p in $prog;
  do ps aux | grep -v grep | grep -q $p || /usr/bin/$p &
done
