export EDITOR="vim"
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad
export GREP_OPTIONS='--color=auto'

unset MAILCHECK

export PATH=~/bin/:$PATH

case $TERM in
    xterm*)
        echo -ne "\033]0;"$USER@$HOSTNAME"\007"
        ;;
esac

alias ls='ls -F'
alias la='ls -laF'
alias rmr='rm -rf'
alias rs='rsync -av --delete'
alias lastsudo='sudo $(history -p \!\!)'

