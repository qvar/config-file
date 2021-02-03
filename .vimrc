syn on
set incsearch
set hls
set backspace=2
set t_kb=^?
"set sts=8
set expandtab
set shiftwidth=2
set tabstop=2
set ai
set si
set ic
set cin
set sm
set ruler
set guioptions-=T
set guifont=Monospace\ 12
"imap b{ begin
"imap e} end
"map  <F2>       :w<CR>
"imap <F2>  <ESC>:w<CR>
"map  <F3>       :q!<CR>
"imap <F3>  <ESC>:q!<CR>
"map  <F12>      *N
"imap <F12> <ESC>*N
"map  <F11>      *
"imap <F11> <ESC>*
"map  <F10>      #
"imap <F10> <ESC>#
"map  <F4>       :e<CR>
"map  <F5>       :n<CR>
"map  <F6>       :N<CR>

"filetype plugin indent on
filetype on
filetype plugin on
filetype indent on
"syntax on            " turns syntax highlighting on


"au BufReadPost *.sv set filetype=verilog 
"au BufReadPost *.svh set filetype=verilog
"au BufReadPost *.cy set filetype=verilog
"au BufReadPost *.cyh set filetype=verilog
"colorscheme elflord
"colorscheme default             " defines the color scheme of the syntax highlighting
set nocompatible                " (cp) use Vim defaults (much better)
set ruler                       " (ru) show the cursor position at all times
set showcmd                     " (sc) display an incomplete command in the lower right
set history=500                 " (hi) keep 50 lines of command history
set number                      " (nu) show line numbers
set showmatch                   " (sm) briefly jump to matching bracket when inserting one
set autoindent                  " (ai) turn on auto-indenting (great for programers)
"set copyindent                  " (ci) when auto-indenting, use the indenting format of the previous line
set tabstop=2                   " (ts) width (in spaces) that a <tab> is displayed as
set shiftwidth=2                " (sw) width (in spaces) used in each step of autoindent (aswell as << and >>)
"set smarttab                   " (sta) 'shiftwidth' used in front of a line, but 'tabstop' used otherwise
set textwidth=80                " (tw) number of columns before an automatic line break is inserted (see formatoptions)
set formatoptions=croq          " (fo) influences how vim automatically formats text
set nrformats+=alpha            " (nf) adds alpha chars to list that gets incremented/decremented with ^A/^X
set listchars+=tab:>-           " (lcs) strings used in 'list' mode to show hidden characters (default=eol:$)
set listchars+=trail:-
set winminheight=0              " (wmh) the minimal height of the window when it's not the current window

"set nowrap                     " allows text to continue off the window (need horizontal scrolling)
set linebreak                   " (lbr) wrap long lines at a space instead of in the middle of a word
set sidescroll=5                " (ss) the minimal number of columns to scroll horizontally
set listchars+=precedes:<       " (lcs) when 'nowrap', character to indicate that line continues off the page
set listchars+=extends:>
set background=light
"syntax on
let Tlist_Auto_Open=1
let Tlist_Auto_Update=1
set expandtab
set ic

"colorscheme morning 
set rnu
"set foldmethod=indent

" Set the filetype based on the file's extension, overriding any
" 'filetype' that has already been set
au BufRead,BufNewFile *.sv,*.svh set filetype=verilog

set cursorline
set cursorcolumn
nnoremap <Space> <Nop>
let mapleader = "\<Space>"


" set runtimepath+= /home/raushank/.vim/bundle/nerdtree
" set rtp += ~/.vim/bundle/ctrlp
" set runtimepath^=~/.vim/bundle/nerdtree/plugin/NERD_tree.vim

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 2  " 1 = horizontal, 2 = vertical
let g:netrw_altv = 1
let g:netrw_winsize = 25
"highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=#99ff99
"highlight DiffDelete cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=#ffcce5
"highlight DiffChange cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=#ffff99
"highlight DiffText   cterm=bold ctermfg=10 ctermbg=88 gui=none guifg=#000000 guibg=#3333ff

"set complete+=kspell

"au VimEnter * :silent !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
"au VimLeave * :silent !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'

" arrow movement
nmap <leader>h <C-w>h
nmap <leader>l <C-w>l
nmap <leader>j <C-w>j
nmap <leader>k <C-w>k

" Vertical & Horizontal split
nmap <leader>v :Vexplore<CR>
nmap <leader>z :Hexplore<CR> 
nmap <leader>x :E<CR>
nmap <leader>c :vsp<CR> 
nmap <leader>C :sp<CR> 


"nmap <leader>i <C-i>
"nmap <leader>o <C-o>

" split equal all, vertical max, horizontal max
nmap <leader>e <C-w>=
nmap <leader>d <C-w>_
nmap <leader>f <C-w>\|

" switch buffer, list buffer
nmap <leader>r <C-^>
nmap <leader>b :ls<CR>

nmap <leader>. :<up><CR>

" read write file
nmap <leader>q :q<CR>
nmap <leader>Q :q!<CR>
nmap <leader>w :w<CR>

" search word
nmap <leader>s g*
nmap <leader>/ :g/<C-r>//l<CR>         
nmap <leader>g :read !grep -rIn <C-r>/<CR>

" run command 
nmap <leader>o :read !

" switch tab
nmap <leader>n gt
nmap <leader>N gT
nmap <leader>t :tabe<CR>


" select a tag, expand-collapse
"nmap <leader>t vat
"nmap <leader>y za

nmap <leader>p :set wrap!<CR>

"rotate the split window
nmap <leader>m <C-w><C-r>           

" remap control-enter to open files in new tab
nmap <silent> <C-CR> t :rightbelow 20vs<CR>:e .<CR>:wincmd h<CR>

" split window horizontal movement
map  <F8>       10<C-w>>
imap <F8> <ESC> 10<C-w>>
map  <F7>       10<C-w><
imap <F7> <ESC> 10<C-w><

" split window vertical movement
map  <F9>       10<C-w>+
imap <F9> <ESC> 10<C-w>+
map  <F10>       10<C-w>-
imap <F10> <ESC> 10<C-w>-

" vimdiff movement
map  <F11>       [c
imap <F11> <ESC> [c
map  <F12>       ]c
imap <F12> <ESC> ]c

" 0 reg paste
vnoremap <leader>p "0p<CR>
nmap <leader>p viw"0p<CR>

" clipart copy
map  <F5>        "+y
imap <F5> <ESC>  "+y

" clipart paste
map  <F6>        "+gP
imap <F6> <ESC>  "+gP

imap jk <Esc> 

" double click search
map <2-LeftMouse> * 
imap <2-LeftMouse> <c-0>* 

" g++ compiler
nnoremap <C-g> :! echo && g++ % -Wall -g -o %.out && ./%.out && echo <CR>

" vimdiff
if &diff
    colorscheme cosmic_latte
endif

if &vi 
    colorscheme default
endif

noremap! <c-?> <c-h>

" open in full screen
" set lines=999 columns=999 

" load Coverity command
let coverity_vimrc= "~/.vim/coverity.vimrc"
if filereadable(coverity_vimrc)
     execute "source " . fnameescape(coverity_vimrc)
endif
