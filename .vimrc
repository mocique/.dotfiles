set mouse=a
set number
set relativenumber
set autoindent
set shiftwidth=4
set expandtab
set tabstop=4
filetype indent on
let vundle_dir = expand('~/.vim/bundle/vundle')
if !isdirectory(vundle_dir)
    silent !git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/vundle 
endif
set rtp+=$HOME/.vim/bundle/vundle

call vundle#rc()
Plugin 'gmarik/vundle'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
colorscheme molokai
