set winminheight=0
map <F9> :!gcc -o test.out % <CR> 
inoremap jk <esc>
set ru
set relativenumber
map <F9> :!make -j16
set noerrorbells	
set t_vb=
let mapleader = ","
map <Leader>d <esc>:cn<CR>
map <Leader>e <esc>:cp<CR>
map <Leader>c :w!<CR>:!python % <CR>
map <Leader>s :w!<CR>
map <Leader>f za
set textwidth=79  " lines longer than 79 columns will be broken
set shiftwidth=4  " operation >> indents 4 columns; << unindents 4 columns
set tabstop=4     " an hard TAB displays as 4 columns
set softtabstop=4 " insert/delete 4 spaces when hitting a TAB/BACKSPACE
set shiftround    " round indent to multiple of 'shiftwidth'
set autoindent    " align the new line indent with the previous lineset shiftwidth=4
set expandtab
set winminheight=0
set undolevels=1000
set background=dark 
set history=700
set autoread
set cmdheight=2
set smartcase
set showmatch
set hlsearch
set incsearch

syntax enable
set nobackup
set nowb
set noswapfile
set relativenumber
set ru
set foldmethod=indent
set foldlevel=99
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
"map <C-h> <C-W>h
"map <C-l> <C-W>l

"return to last edit position when opening files (You want this!)

autocmd BufReadPost *

     \ if line("'\"") > 0 && line("'\"") <= line("$") |

     \   exe "normal! g`\"" |

     \ endif

if has('gui_running')

  set guioptions-=T  " no toolbar

  set guifont=Monospace\ 10

  colorscheme desert

endif
set path+=**
map <F4> :!find . -name "*.[ch]" -and -not -path "*sched" -exec grep -nHr "<cword>" {} \;<CR>
"map <F4> :vimgrep "<cword>" ./**/*.[ch]<CR>
map <F3> :execute "vimgrep /" . expand("<cword>") . "/j **/*.[ch]" <Bar> cw<CR>
map <F2> :!ctags -R * <CR>:set tag=tags<CR>
map <F5> :!find . -iname "**.[ch]"
inoremap jk <esc>
map <F12> :source ~/.gvimrc<CR>
