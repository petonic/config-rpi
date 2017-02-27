#
# RPI-specific .zshrc
#

alias mate='rmate -H localhost'
alias m=mate
alias m="mate -f"
alias mw="mate -w"
alias mq="mate -f"

alias sm='/usr/bin/sudo -E "$HOME/bin/rmate" --no-wait'


alias ls='ls -CF --color=auto'
lsr() { ls -lt "$@" | head ; }
