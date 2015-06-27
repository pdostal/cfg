export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export MM_CHARSET=utf8
export LC_COLLATE=”en_US.UTF-8″
export LC_TIME=”en_US.UTF-8″
export LC_NUMERIC=”en_US.UTF-8″
export LC_MONETARY=”en_US.UTF-8″
export LC_MESSAGES=”en_US.UTF-8″

export PS1="\[\e]0;`basename $PWD`\007\]\u@\h:\w$ "

export EDITOR="vim"
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad
export GREP_OPTIONS='--color=auto'

unset MAILCHECK

export PATH=./bin:~/bin/:/usr/local/sbin:$PATH

alias g='git'
alias ls='ls -F'
alias la='ls -laF'
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

omg_second_line='\w • '
omg_ungit_prompt='\w • '
omg_is_a_git_repo_symbol=''
omg_has_untracked_files_symbol=''
omg_has_adds_symbol=''
omg_has_deletions_symbol=''
omg_has_cached_deletions_symbol=''
omg_has_modifications_symbol=''
omg_has_cached_modifications_symbol=''
omg_ready_to_commit_symbol=''
omg_local_remote_separator=''
omg_is_on_a_tag_symbol=''
omg_needs_to_merge_symbol='ᄉ'
omg_detached_symbol=''
omg_can_fast_forward_symbol=''
omg_has_diverged_symbol=''
omg_not_tracked_branch_symbol=''
omg_rebase_tracking_branch_symbol=''
omg_merge_tracking_branch_symbol=''
omg_should_push_symbol=''
omg_has_stashes_symbol=''
omg_last_symbol=''

omg_default_color_on='\e[0m'
omg_default_color_off='\e[0m'
omg_last_symbol_color='\e[0m'

function omg_prompt_callback() {
    echo "\[\e]0;`basename $PWD`\007\]"
}
