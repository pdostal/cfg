GREEN="\[\e[0;32m\]"
YELLOW="\[\e[0;33m\]"
BLUE="\[\e[0;34m\]"
PURPLE="\[\e[0;35m\]"
RED="\[\e[0;31m\]"
GREY="\[\e[0;36m\]"
WHITE="\[\e[00m\]"

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

export PATH="/usr/local/heroku/bin:$PATH"

export PROMPT_COMMAND='

  if [[ $S -eq 0 ]]; then
    DOLLAR="${GREY}\$"
  else
    DOLLAR="${RED}\$"
  fi

  if git ls-files &> /dev/null; then
    GITBRANCH=$(git rev-parse --abbrev-ref HEAD 2> /dev/null)
    GITTAG=$(git describe --tags --abbrev=0 2> /dev/null)
    if git diff-index --quiet HEAD -- 2> /dev/null; then
      STAR=""
    else
      STAR="*"
    fi
  else
    GITBRANCH=""
    GITTAG=""
    STAR=""
  fi

  export PS1="${YELLOW}\u${GREEN}@${RED}\h${BLUE}: ${PURPLE}\w ${RED}${STAR}${YELLOW}${GITBRANCH} ${YELLOW}${GITTAG}\n${GREY}${DOLLAR} ${WHITE}"
'
