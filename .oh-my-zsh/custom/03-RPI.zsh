alias m=mate
alias mate=atom         # Will get overwritten in RPI specific zsh config
alias m="mate -f"
alias mw="mate -w"
alias mq="mate -f"


alias o=open
alias l=less
alias resource='source ~/.zshrc'
alias la='ls -A'
alias ll='ls -lA'
alias ls='ls -CF --color=auto'
alias lsd='/bin/ls -dF */'
lsr() { ls -lt "$@" | head ; }
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias grepi='grep -i'
alias fgrepi='fgrep -i'
alias egrepi='egrep -i'

alias h='history -$LINES'

export CLICOLOR=1
export CDPATH=:$HOME/git:$HOME
export LESS="--quit-on-intr --long-prompt --quiet --RAW-CONTROL-CHARS \
--hilite-unread --no-init --quit-if-one-screen --LONG-PROMPT"
export HISTCONTROL=ignoreboth
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
export HISTSIZE=1000
export HISTFILESIZE=2000
export LC_COLLATE=C             # Old-school sorting order, incl symbols

# Set iTerm2 Badge function
function sb() {
    printf "\e]1337;SetBadgeFormat=%s\a"   $(echo -n "$*" | base64)
}
