#
# RPI-specific .zshrc
#
export PATH="$HOME/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:"
export PATH="$PATH:/sbin:/bin:/usr/bin:."

alias mate='rmate -H localhost'
alias m="mate -w -f"                # Default, wait for response
alias mw="mate -w -f"               # Default, wait for response
alias ml="mate -f"                  # Long running, i.e., don't wait

alias sm='/usr/bin/sudo -E "$HOME/bin/rmate" --no-wait'
alias sl='sudo less'
alias sz='sudo zsh'
alias sysc='sudo systemctl'
alias sc='sudo supervisorctl'

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel

if [[ -f /usr/local/bin/virtualenvwrapper.sh ]]; then
    source /usr/local/bin/virtualenvwrapper.sh
fi



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

#
# Aliases for DU sorted by size
function duf {
  du -k "$@" | sort -n | while read size fname; do
    for unit in k M G T P E Z Y; do
      if [ $size -lt 1024 ]; then
        printf "%6d%s\t%s\\n" "${size}" "${unit}" "${fname}"
        # echo
        # echo -e "${size}${unit}t${fname}";
        break;
      fi;
      size=$((size/1024));
    done;
  done
}

alias du1='duf --max-depth=1'
alias du2='duf --max-depth=2'
alias du0='duf --max-depth=0'
