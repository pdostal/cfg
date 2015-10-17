#!/bin/sh

makelink() {
  echo "@ $3\t$1";
  if [ ! -f $1 ]; then
    mkdir -p `dirname $1`;
  fi
  rm -rf $1;
  ln -s $2 $1;
  chown -Rf $USER $1;
  chmod -Rf $3 $1;
}
mergeone() {
  echo "+ $3\t$1";
  if [ ! -f $1 ]; then
    mkdir -p `dirname $1`;
  fi
  rm -rf $1;
  cp $2 $1;
  chown -Rf $USER $1;
  chmod -Rf $3 $1;
}
mergetwo() {
  echo "+ ___\t$2";
  if [ -f $2 ]; then
    cat $2 1>> $1;
  fi
}

# bash
mergeone $1/.bashrc $2/bashrc 770
mergetwo $1/.bashrc $2/bashrc_secret
# vim
makelink $1/.vimrc $2/vimrc 750
# git
makelink $1/.gitconfig $2/gitconfig 750
# htop
makelink $1/.htoprc $2/htoprc 750
# ssh
mergeone $1/.ssh/config $2/sshconfig 700
mergetwo $1/.ssh/config $2/sshconfig_secret
# gem
makelink $1/.gemrc $2/gemrc 755
# tmux
makelink $1/.tmux.conf $2/tmux.conf 744
# tmuxinator
makelink $1/.tmuxinator/servers.yml $2/tmuxinator/servers.yml 744

