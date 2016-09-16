#!/bin/sh

copyone() {
  echo "@ $3\t$1";
  if [ ! -f $1 ]; then
    mkdir -p `dirname $1`;
  fi
  rm -rf $1;
  cp $2 $1;
  chown -Rf $USER $1;
  chmod -Rf $3 $1;
}
copytwo() {
  echo "     \t$1_secret";
  if [ -f $2 ]; then
    cat $2 1>> $1;
  fi
}

# bash
copyone $1/.bashrc $2/bashrc 770
copytwo $1/.bashrc $2/bashrc_secret
# vim
copyone $1/.vimrc $2/vimrc 755
copytwo $1/.vimrc $2/vimrc_secret
# git
copyone $1/.gitconfig $2/gitconfig 750
copytwo $1/.gitconfig $2/gitconfig_secret
# htop
copyone $1/.htoprc $2/htoprc 750
# ssh
copyone $1/.ssh/config $2/sshconfig 700
copytwo $1/.ssh/config $2/sshconfig_secret
# gem
copyone $1/.gemrc $2/gemrc 755
# tmux
copyone $1/.tmux.conf $2/tmux.conf 744
# tmuxinator
copyone $1/.tmuxinator/pdostal.yml $2/tmuxinator/pdostal.yml 744
copyone $1/.tmuxinator/sh.yml $2/tmuxinator/sh.yml 744

