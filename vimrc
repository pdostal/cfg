set number

syntax on

set nowrap

""" TABBING
set expandtab
set tabstop=2
set shiftwidth=2

""" LINE WIDTH
set colorcolumn=0
match ErrorMsg '\%>120v.\+'

""" AUTOSAVE
:au FocusLost * silent! wa

""" LAST POSITION
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe
  "normal! g'\"" | endif
endif

filetype off
set nocompatible

""" VUNDLE
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

""" NERDTREE
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
map <C-n> :NERDTreeToggle<CR>

""" VUNDLE
call vundle#end()
filetype plugin indent on

