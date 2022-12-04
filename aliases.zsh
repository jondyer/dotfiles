## Aliases ##
alias la="ls -lash"
alias bell='echo -e "\a"'
alias gs='git status; echo;'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto -h'
    alias dir='ls -l'
    alias vdir='dir'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more DOS-like aliases
alias del='rm'
alias rd='rmdir'
alias md='mkdir'
alias copy='cp'
alias move='mv'
alias cd..='cd ..'
# other human-readable flags
alias du='du -h'
alias df='df -h'
alias rsync='rsync -h'
