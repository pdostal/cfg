export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH

export ZSH=/Users/pavel/.oh-my-zsh

ZSH_THEME="robbyrussell"

source $ZSH/oh-my-zsh.sh
export LANG=en_US.UTF-8

CASE_SENSITIVE="true"
HYPHEN_INSENSITIVE="false"
DISABLE_LS_COLORS="true"

plugins=(git git-extras sudo osx ssh-agent tmux iterm2 docker docker-compose battery iwhois gnu-utils)

zstyle :omz:plugins:ssh-agent identities id_rsa id_ecdsa id_dsa
zstyle :omz:plugins:ssh-agent agent-forwarding on

export EDITOR='vim'
export TERM=xterm

function git_repo_space() {
  if git rev-parse --git-dir > /dev/null 2>&1; then
    echo " "
  else
    echo ""
  fi
}

RPROMPT=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{%}%{%}%% "
ZSH_THEME_GIT_PROMPT_CLEAN="%{%}$ "
PROMPT='%~$(git_repo_space)$(git_current_branch)$(parse_git_dirty)'

setopt noincappendhistory
setopt nosharehistory

fixagent() {
  for key in SSH_AUTH_SOCK SSH_CONNECTION SSH_CLIENT; do
    if (tmux show-environment | grep "^${key}" > /dev/null); then
      value=`tmux show-environment | grep "^${key}" | sed -e "s/^[A-Z_]*=//"`
      export ${key}="${value}"
    fi
  done
}

