set mouse=a
set number
set relativenumber
let vundle_dir = expand('~/.vim/bundle/vundle')
if !isdirectory(vundle_dir)
    silent !git clone git@github.com:VundleVim/Vundle.vim.git ~/.vim/bundle/vundle 
endif
set rtp+=$HOME/.vim/bundle/vundle

call vundle#rc()
Plugin 'gmarik/vundle'
Plugin 'flazz/vim-colorschemes'
colorscheme molokai
