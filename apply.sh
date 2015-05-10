#!/bin/sh

makelink() {
	echo "$3\t$1";
	rm -rf $1;
	ln -s $2 $1;
	chown -Rf $USER $1;
	chmod -Rf $3 $1;
}

# bash
makelink $HOME/.bashrc $PWD/bashrc 770
# vim
makelink $HOME/.vimrc $PWD/vimrc 750
# git
makelink $HOME/.gitconfig $PWD/gitconfig 750
# htop
makelink $HOME/.htoprc $PWD/htoprc 750
# ssh
makelink $HOME/.ssh/config $PWD/sshconfig 700
# gem
makelink $HOME/.gemrc $PWD/gemrc 755
# Atom
makelink $HOME/.atom $PWD/atom 755

