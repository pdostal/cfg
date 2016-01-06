syntax on
set number
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

