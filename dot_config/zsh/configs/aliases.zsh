#
# Suffix Aliases
#   Open commands if running filetype (e.g. myfile.yml opens in vim)
#
alias -s {ini,md,txt,yml,yaml}=vim


# Non-BSD Aliases
#
if [ -x /usr/bin/dircolors ]; then
  export COLUMNS  # Remember columns for subprocesses.
  alias grep='grep --color=auto'
  alias fgrep='fgrep --color'
  alias egrep='egrep --color'
  alias ls='ls --color --time-style=long-iso --group-directories-first'
fi


#
# Various command defaults
#
alias cp='cp -i' # confirm on overwrite
alias ln='ln -i' # confirm on overwrite
alias mv='mv -i' # confirm on overwrite
alias mkdir='mkdir -p'
alias tmux='tmux -2' # ensure tmux is run in 256 color mode
alias wget='wget -c' # Resume wget by default
alias ip='ip -c'

# Don't allow changing permissions on /
# Doesn't work for Mac or Freebsd distros
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    alias rm='rm -I --preserve-root' # Don't allow removing / and require confirmation for more than 3 deletions
    alias chgrp='chgrp --preserve-root'
    alias chmod='chmod --preserve-root'
    alias chown='chown --preserve-root'
fi


#
# Quick Commands
#
alias -g ll='ls -lAhF'
alias -g l='ls -lhF'
alias -g ff='find . -name $1'
alias digga='dig +nocmd any +multiline +noall +answer'
alias ipbrief='ip -c -br a'
alias tm='tmux attach || tmux new'  # attach tmux or start a new session if no sessions
alias gitlog='git log --graph --abbrev-commit --decorate --date=relative --format=format:"%C(bold red)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(bold blue)<%an>%C(reset)%C(bold yellow)%d%C(reset)" --all'
alias mountt='mount | column -t' # Make mount output easier to read
alias ports='netstat -tulanp'


#
# Misc
#
alias :q='echo You are not editing a file, dummy.'
alias :wq=':q'
alias boss='while [ TRUE ]; do head -n 100 /dev/urandom; sleep .1; done | hexdump -C | grep "ca fe"'
