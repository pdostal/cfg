#!/bin/sh

echo "SUB\tInit";
git submodule init 1> /dev/null
echo "SUB\tUpdate";
git submodule update --recursive 1> /dev/null

makelink() {
	echo "$3\t$1";
	rm -f $1;
	ln -s $2 $1;
	chown -f $USER $1;
	chmod -f $3 $1;
}

# bash
makelink $HOME/.bashrc $PWD/bashrc 770
makelink $HOME/.profile $PWD/profile 770
makelink $HOME/.bash_it $PWD/bash-it 770
# vim
makelink $HOME/.vimrc $PWD/vimrc 750
# git
makelink $HOME/.gitconfig $PWD/gitconfig 750
makelink $HOME/.gitignore $PWD/gitignore 750
makelink $HOME/.gitignore_osx $PWD/gitignore_github/Global/OSX.gitignore +++
# htop
makelink $HOME/.htoprc $PWD/htoprc 750
# ssh
makelink $HOME/.ssh/config $PWD/sshconfig 700
# gem
makelink $HOME/.gemrc $PWD/gemrc 755

