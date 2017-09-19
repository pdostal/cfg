export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH

export ZSH=/Users/pavel/.oh-my-zsh
ZSH_THEME="robbyrussell"

source $ZSH/oh-my-zsh.sh
#export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8

CASE_SENSITIVE="true"
HYPHEN_INSENSITIVE="false"

#DISABLE_AUTO_UPDATE="true"
#export UPDATE_ZSH_DAYS=13

DISABLE_LS_COLORS="true"
#DISABLE_AUTO_TITLE="true"
#ENABLE_CORRECTION="true"
#COMPLETION_WAITING_DOTS="true"
#DISABLE_UNTRACKED_FILES_DIRTY="true"
#HIST_STAMPS="mm/dd/yyyy"
#ZSH_CUSTOM=/path/to/new-custom-folder
plugins=(git git-extras sudo osx ssh-agent tmux)

export EDITOR='vim'
export TERM=xterm

#if [[ -n $SSH_CONNECTION ]]; then
#  export EDITOR='vim'
#else
#  export EDITOR='mvim'
#fi
#export ARCHFLAGS="-arch x86_64"
#export SSH_KEY_PATH="~/.ssh/rsa_id"

function git_repo_space() {
  if git rev-parse --git-dir > /dev/null 2>&1; then
    echo " "
  else
    echo ""
  fi
}
#chpwd_functions+=(git_repo_space)

RPROMPT=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{%}%{%}%% "
ZSH_THEME_GIT_PROMPT_CLEAN="%{%}$ "
PROMPT='%~$(git_repo_space)$(git_current_branch)$(parse_git_dirty)'

#setopt no_share_history
#unsetopt share_history
setopt noincappendhistory
setopt nosharehistory

