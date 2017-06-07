"       Amir Salihefendic
"       http://amix.dk - amix@amix.dk
"
" Version: 
"       6.0 - 01/04/17 14:24:34 
"
" Blog_post: 
"       http://amix.dk/blog/post/19691#The-ultimate-Vim-configuration-on-Github
"
" Awesome_version:
"       Get this config, nice color schemes and lots of plugins!
"
"       Install the awesome version from:
"
"           https://github.com/amix/vimrc
"
" Syntax_highlighted:
"       http://amix.dk/vim/vimrc.html
"
" Raw_version: 
"       http://amix.dk/vim/vimrc.txt
"
" Sections:
"    -> General
"    -> VIM user interface
"    -> Colors and Fonts
"    -> Files and backups
"    -> Text, tab and indent related
"    -> Visual mode related
"    -> Moving around, tabs and buffers
"    -> Status line
"    -> Editing mappings
"    -> vimgrep searching and cope displaying
"    -> Spell checking
"    -> Misc
"    -> Helper functions
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" general setting
set history=500
set mouse=a
set number
set relativenumber

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" :W sudo saves the file 
" (useful for handling the permission-denied error)
cmap  W w !sudo tee % > /dev/null


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Avoid garbled characters in Chinese language windows OS
" let $LANG='en' 
" set langmenu=en
" source $VIMRUNTIME/delmenu.vim
" source $VIMRUNTIME/menu.vim

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

"Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" A buffer becomes hidden when it is abandoned
" set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch 
" disable highting after search
nnoremap <silent> <CR> :noh<CR>


" nnoremap <silent> <esc> :noh<cr><esc>
" nnoremap <esc> :noh<return><esc>
" nnoremap <esc>^[ <esc>^[

" Don't redraw while executing macros (good performance config)
" set lazyredraw 

" For regular expressions turn magic on
" set magic

" Show matching brackets when text indicator is over them
" set showmatch 
" How many tenths of a second to blink when matching brackets
" set mat=2

" No annoying sound on errors
" set noerrorbells
" set novisualbell
" set t_vb=
" set tm=500

" Properly disable sound on errors on MacVim
" if has("gui_macvim")
"     autocmd GUIEnter * set vb t_vb=
" endif


" Add a bit extra margin to the left
set foldcolumn=0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable 

" Enable 256 colors palette in Gnome Terminal
" if $COLORTERM == 'gnome-terminal'
"     set t_Co=256
" endif
" 
" try
"     colorscheme desert
" catch
" endtry
" 
" set background=dark

" Set extra options when running in GUI mode
" if has("gui_running")
"     set guioptions-=T
"     set guioptions-=e
"     set t_Co=256
"     set guitablabel=%M\ %t
" endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
" set nobackup
" set nowb
" set noswapfile


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines


""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
" vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
" vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
" map <space> /
" map <c-space> ?

" Disable highlight when <leader><cr> is pressed
" map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Close the current buffer
" map <leader>bd :Bclose<cr>:tabclose<cr>gT

" Close all the buffers
" map <leader>ba :bufdo bd<cr>

" map <leader>l :bnext<cr>
" map <leader>h :bprevious<cr>

" Useful mappings for managing tabs
" map <leader>tn :tabnew<cr>
" map <leader>to :tabonly<cr>
" map <leader>tc :tabclose<cr>
" map <leader>tm :tabmove 
" map <leader>t<leader> :tabnext 

" Let 'tl' toggle between this and the last accessed tab
" let g:lasttab = 1
" nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
" au TabLeave * let g:lasttab = tabpagenr()


" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
" map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
" map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Specify the behavior when switching between buffers 
" try
"   set switchbuf=useopen,usetab,newtab
"   set stal=2
" catch
" endtry

" Return to last edit position when opening files (You want this!)
" au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap VIM 0 to first non-blank character
map 0 ^

" Move a line of text using ALT+[jk] or Command+[jk] on mac
" nmap <M-j> mz:m+<cr>`z
" nmap <M-k> mz:m-2<cr>`z
" vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
" vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z
" 
" if has("mac") || has("macunix")
"   nmap <D-j> <M-j>
"   nmap <D-k> <M-k>
"   vmap <D-j> <M-j>
"   vmap <D-k> <M-k>
" endif

" Delete trailing white space on save, useful for some filetypes ;)
fun! CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun

if has("autocmd")
    autocmd BufWritePre *.txt,*.js,*.py,*.wiki,*.sh,*.coffee :call CleanExtraSpaces()
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
" map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
" map <leader>sn ]s
" map <leader>sp [s
" map <leader>sa zg
" map <leader>s? z=


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove the Windows ^M - when the encodings gets messed up
" noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Quickly open a buffer for scribble
" map <leader>q :e ~/buffer<cr>

" Quickly open a markdown buffer for scribble
" map <leader>x :e ~/buffer.md<cr>

" Toggle paste mode on and off
map <leader>pp :setlocal paste! <bar> set nonumber! <bar>  set norelativenumber!<cr>

" copy current file path
nmap cp :let @"=expand("%:p")<CR>

"folding
set sessionoptions+=folds 
au BufWinLeave *.* mkview
au BufWinEnter *.* silent loadview

" disable arrow key in normal mode
nmap <Up> m
nmap <Down> m
nmap <Left> m
nmap <Right> m

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
   let l:currentBufNum = bufnr("%")
   let l:alternateBufNum = bufnr("#")

   if buflisted(l:alternateBufNum)
     buffer #
   else
     bnext
   endif

   if bufnr("%") == l:currentBufNum
     new
   endif

   if buflisted(l:currentBufNum)
     execute("bdelete! ".l:currentBufNum)
   endif
endfunction
"plugins
let vundle_dir = expand('~/.vim/bundle/vundle')
if !isdirectory(vundle_dir)
    silent !git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/vundle 
endif
set rtp+=$HOME/.vim/bundle/vundle

call vundle#rc()
Plugin 'gmarik/vundle'

Plugin 'flazz/vim-colorschemes'
let color_dir = expand('~/.vim/colors')
if !isdirectory(color_dir)
    silent !mkdir ~/.vim/colors
    silent !wget https://raw.githubusercontent.com/encody/vim-colors/master/colors/lyla.vim -O ~/.vim/colors/lyla.vim
endif
colorscheme lyla

Plugin 'scrooloose/nerdtree'

Plugin 'kien/ctrlp.vim'

Plugin 'tpope/vim-surround'

" Plugin 'JamshedVesuna/vim-markdown-preview'
" let vim_markdown_preview_hotkey='<leader>mp'
" let vim_markdown_preview_browser='Google Chrome'
" let vim_markdown_preview_github=1

Plugin 'godlygeek/tabular'

" markdown 
Plugin 'plasticboy/vim-markdown'
map ]j <Plug>Markdown_MoveToNextHeader
map ]k <Plug>Markdown_MoveToPreviousHeader
map ]h <Plug>Markdown_MoveToPreviousSiblingHeader
map ]l <Plug>Markdown_MoveToNextSiblingHeader
map ]c <Plug>Markdown_MoveToCurHeader
map ]p <Plug>Markdown_MoveToParentHeader
let g:vim_markdown_folding_disabled = 1

" vim jedi
Plugin 'davidhalter/jedi-vim'
" disable docstring window to popup
autocmd FileType python setlocal completeopt-=preview
" disable slow dot completion
let g:jedi#popup_on_dot = 0


" use tab to brower auto-completion
Plugin 'ervandew/supertab'
" brwoser direction from top to button
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabCrMapping=1

" dash only in macos
" Plugin 'rizzatti/dash.vim'
" map <leader>da y:Dash <C-r>"<CR>

" google search, not for server
Plugin 'szw/vim-g'
vnoremap <Leader>gg y:Googlef <CR>

" Plugin 'benmills/vimux'

" open a new tmux pane in button for running
" new support python, markdown
function Run_curr_file(...)
    let $file_name=expand('%:t')
    let $file_path=expand('%:p')
    let $file_dir = expand('%:p:h')
    if &filetype == 'python'
        silent !tmux split-window -p 10
        let $cmd='python3 ' . $file_path
        " let $num_tmux_windows=system('tmux list-windows | sed -E "s/.*\((.*)\ panes\).*/\1/"')
        " let $new_tmux_window_ind = $num_tmux_windows -1
        " let cmd_sent = "'.escape(cmd, '\"$').'"
        " silent !tmux send-key -t $new_tmux_window_ind "$cmd" Enter
        silent !tmux send-key -t 1 "$cmd" Enter
        redraw!
    endif
    if &filetype == 'markdown'
        silent !tmux split-window -p 10
        let $cmd='grip --user mocique  ' . $file_path
        silent !tmux send-key -t 1 "$cmd" Enter
    endif
    if &filetype == 'cpp'
        silent !tmux split-window -p 10
        let $cmd = 'make'
        silent !tmux send-key -t 1 "cd $file_dir" Enter
        silent !tmux send-key -t 1 "$cmd" Enter
    endif
endfunction
map <F5> :call Run_curr_file()<cr>


