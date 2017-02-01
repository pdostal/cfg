export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH

export ZSH=/Users/pavel/.oh-my-zsh
ZSH_THEME="robbyrussell"

#CASE_SENSITIVE="true"
#HYPHEN_INSENSITIVE="true"

#DISABLE_AUTO_UPDATE="true"
#export UPDATE_ZSH_DAYS=13

DISABLE_LS_COLORS="true"
#DISABLE_AUTO_TITLE="true"
#ENABLE_CORRECTION="true"
#COMPLETION_WAITING_DOTS="true"
#DISABLE_UNTRACKED_FILES_DIRTY="true"
#HIST_STAMPS="mm/dd/yyyy"
#ZSH_CUSTOM=/path/to/new-custom-folder
plugins=(git osx ssh-agent)

source $ZSH/oh-my-zsh.sh
#export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8
export EDITOR='vim'
#if [[ -n $SSH_CONNECTION ]]; then
#  export EDITOR='vim'
#else
#  export EDITOR='mvim'
#fi
#export ARCHFLAGS="-arch x86_64"
#export SSH_KEY_PATH="~/.ssh/rsa_id"

export PROMPT='%~$ '

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

alias g='git'
alias ga='git add -A'

alias rmr='rm -rf'

alias rs='rsync -av --delete'
alias cs='coffee -o . -c .'

alias lastsudo='sudo $(history -p \!\!)'
alias airport='sudo /System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport'
alias dotfilesapply='~/dotfiles/apply.sh /Users/pavel /Users/pavel/dotfiles'
alias mosh='MOSH_TITLE_NOPREFIX=true mosh'

alias mtr='sudo mtr'

alias doo='docker'
alias doco='docker-compose'

