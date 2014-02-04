#export SHELL=/bin/bash
#export PS1="\u@\h:\w $ "
export PS1="\[\033[0;32m\]\u\[\033[0;33m\]@\[\033[0;34m\]\h\[\033[0;35m\]:\[\033[0;31m\]\w \[\033[0;36m\]$ \[\033[1;37m\]"
export EDITOR="vim"

unset MAILCHECK

case $TERM in
    xterm*)
        echo -ne "\033]0;"$USER@$HOSTNAME"\007"
        ;;
esac

alias ls='ls -F --color=always'
alias la='ls -laF --color=always'
alias rmr='rm -rf'
alias rs='rsync -av --delete'

if [ -f ~/.bashpath ]; then
	source ~/.bashpath
fi
