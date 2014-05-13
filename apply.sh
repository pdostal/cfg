#!/bin/sh
makelink() {
	echo "$3\t$2";
	rm -f $2;
	ln -f $1 $2;
	chown -f $USER:$USER $2;
	chmod -f $3 $2;
}
# bash
makelink $HOME/cfg/bashrc $HOME/.bashrc 770
makelink $HOME/cfg/bashrun $HOME/.bashrun 770
# vim
makelink $HOME/cfg/vimrc $HOME/.vimrc 750
# git
makelink $HOME/cfg/gitconfig $HOME/.gitconfig 750
# htop
makelink $HOME/cfg/htoprc $HOME/.htoprc 750
