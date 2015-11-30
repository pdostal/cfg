export MM_CHARSET=utf8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_TIME=”en_US.UTF-8
export LC_COLLATE=”en_US.UTF-8″
export LC_NUMERIC=”en_US.UTF-8″
export LC_MONETARY=”en_US.UTF-8″
export LC_MESSAGES=”en_US.UTF-8″

export PS1="\[\e]0;`basename $PWD`\007\]\u@\h:\w$ "

export TERM="xterm"
export EDITOR="vim"

export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad

unset MAILCHECK

export PATH=./bin:~/bin:/usr/local/sbin:$PATH

alias g='git'
alias ga='git add -A'
alias ls='ls -F --color=never'
alias la='ls -laF --color=never'
alias rmr='rm -rf'
alias rs='rsync -av --delete'
alias cs='coffee -o . -c .'
alias lastsudo='sudo $(history -p \!\!)'
alias airport='sudo /System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport'
alias dotfilesapply='~/dotfiles/apply.sh /Users/pavel /Users/pavel/dotfiles'

if hash rbenv 2>/dev/null ; then
  eval "$(rbenv init -)"
fi

if hash fasd 2>/dev/null ; then
  fasd_cache="$HOME/.fasd-init-bash"
  if [ hash fasd 2>/dev/null && "$(command -v fasd)" -nt "$fasd_cache" -o ! -s "$fasd_cache" ]; then
    fasd --init posix-alias bash-hook bash-ccomp bash-ccomp-install >| "$fasd_cache"
  fi
  source "$fasd_cache"
  unset fasd_cache
fi
