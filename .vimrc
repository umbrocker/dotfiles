" This is my test .vimrc
" Some of my settings
syntax on
set background=dark
set number			" set line numbering
set relativenumber	" set relative line numbering
set tabstop=4		" set tabsize
set shiftwidth=4	" set indent size		
set showcmd			" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set nocompatible	" Not compatable with Vi
set path+=**		" useful for using 'find'
set wildmenu		" wildcard usage

" Uncomment the following to have Vim jump to the last position when
" reopening a file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
filetype plugin indent on

" Press F4 to toggle highlighting on/off, and show current value.
nnoremap <F4> :set hlsearch! hlsearch?<CR>

" remapping split view movement
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Making tags if ctags is installed
command! MakeTags !ctags -R .

" If I want to use html skeleton
" nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>3jwf>a

" using python skeleton
nnoremap ,py :-1read $HOME/.vim/.skeleton.py<CR>6ji<tab>

" run in python
command! RunPy !python3 %

" Tweaks for browsing
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
" if filereadable("/etc/vim/vimrc.local")
"   source /etc/vim/vimrc.local
" endif

