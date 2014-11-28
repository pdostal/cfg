#!/bin/sh

makelink() {
	echo "$3\t$2";
	rm -f $2;
	ln -f $1 $2;
	chown -f $USER $2;
	chmod -f $3 $2;
}
# bash
makelink $PWD/bashrc $HOME/.bashrc 770
makelink $PWD/profile $HOME/.profile 770
# vim
makelink $PWD/vimrc $HOME/.vimrc 750
# git
makelink $PWD/gitconfig $HOME/.gitconfig 750
# htop
makelink $PWD/htoprc $HOME/.htoprc 750
# ssh
makelink $PWD/sshconfig $HOME/.ssh/config 700
# gem
makelink $PWD/gemrc $HOME/.gemrc 755

