#
# RPI-specific .zshrc
#
export PATH="$HOME/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:"
export PATH="$PATH:/sbin:/bin:/usr/bin:."

alias mate='rmate -H localhost'
alias m=mate
alias m="mate -f"
alias mw="mate -w"
alias mq="mate -f"

alias sm='/usr/bin/sudo -E "$HOME/bin/rmate" --no-wait'

# lsr() { ls -lt "$@" | head ; }
lsr () {
    headflag=-10
    for i in "$@"; do
        # Any -xx (xx == num) will change the head params
        if [[ $i =~ "-[0-9]+" ]]; then
            headflag="${i}"
            shift       # Take it away from the param passed to ls
        fi
    done
    /bin/ls -lt "$@" | head "$headflag"
}


alias ls='ls -CF --color=auto'

# if [ ! -d ~/git/sfodemo/README.md ]; then
#         echo "### Mounting the unmounted NFSDirs"
#         ~/bin/nfs0start
# fi
