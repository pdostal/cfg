#!/bin/sh

makelink() {
	echo "@ $3\t$1";
	rm -rf $1;
	ln -s $2 $1;
	chown -Rf $USER $1;
	chmod -Rf $3 $1;
}
mergeone() {
        echo "+ $3\t$1";
        rm -rf $1;
        cp $2 $1;
        chown -Rf $USER $1;
        chmod -Rf $3 $1;
}
mergetwo() {
        echo "+ ___\t$2";
        cat $2 1>> $1;
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
mergeone $HOME/.ssh/config $PWD/sshconfig 700
mergetwo $HOME/.ssh/config $HOME/.ssh/aliases
# gem
makelink $HOME/.gemrc $PWD/gemrc 755
# tmux
makelink $HOME/.tmux.conf $PWD/tmux.conf 744

