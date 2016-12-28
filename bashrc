export MM_CHARSET=utf8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_TIME=”en_US.UTF-8
export LC_COLLATE=”en_US.UTF-8″
export LC_NUMERIC=”en_US.UTF-8″
export LC_MONETARY=”en_US.UTF-8″
export LC_MESSAGES=”en_US.UTF-8″

# Based on: https://github.com/jimeh/git-aware-prompt
find_git_branch() {
  # Based on: http://stackoverflow.com/a/13003854/170413
  local branch
  if branch=$(git rev-parse --abbrev-ref HEAD 2> /dev/null); then
    if [[ "$branch" == "HEAD" ]]; then
      branch=' detached*'
    fi
    git_branch=" $branch"
  else
    git_branch=""
  fi
}
find_git_tag() {
  local tag
  if tag=$(git describe --abbrev=0 --tags 2> /dev/null); then
    git_tag=":$tag"
  else
    git_tag=""
  fi
}
find_git_dirty() {
  local status=$(git status --porcelain 2> /dev/null)
  if [[ "$status" != "" ]]; then
    git_dirty="'"
  else
    git_dirty=""
  fi
}

PROMPT_COMMAND="find_git_branch; find_git_tag; find_git_dirty; $PROMPT_COMMAND"

if [ "$myPrimaryDevice" == 1 ]; then
  export PS1="\[\e]0;local: \w\a\007\]\w\$git_branch\$git_tag\$git_dirty$ "
else
  export PS1="\[\e]0;\h: \w\a\007\]\u@\h:\w\$git_branch\$git_tag\$git_dirty$ "
fi

export TERM="xterm"
export EDITOR="vim"

export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad

unset MAILCHECK

export PATH=./bin:~/bin:/usr/local/sbin:$PATH

alias g='git'
alias ga='git add -A'

if ls --color -d . >/dev/null 2>&1; then
  # GNU
  alias ls='ls -F --color=never'
  alias la='ls -laF --color=never'
elif ls -G -d . >/dev/null 2>&1; then
  # BSD
  alias ls='ls -F'
  alias la='ls -laF'
else
  alias ls='ls -F'
  alias la='ls -laF'
fi
alias rmr='rm -rf'
alias rs='rsync -av --delete'
alias cs='coffee -o . -c .'
alias lastsudo='sudo $(history -p \!\!)'
alias airport='sudo /System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport'
alias dotfilesapply='~/dotfiles/apply.sh /Users/pavel /Users/pavel/dotfiles'
alias mosh='MOSH_TITLE_NOPREFIX=true mosh'
alias mtr='sudo mtr'
alias docu='docker-compose'
HISTSIZE=10000
HISTFILESIZE=1000000
shopt -s histappend
#export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

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
