"===============================================================================
" .vimrc
" author: jesager
"===============================================================================
" type :so % to reload without exit

"_______________________________________________________________________________
"
" Vundle Plugins
"-------------------------------------------------------------------------------

" These lines are required for the vundle config (see github for details)
" The plugins must be added in the plugin-block before vundle#end

" The line below is reinitialized after the plugin-block
filetype off
set noswapfile
" vi is off (only improved)
set nocompatible

set rtp+=~/.vim/bundle/Vundle.vim

" These are the current plugins (org disabled here)
call vundle#begin()
Plugin 'vundlevim/vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'jceb/vim-orgmode'
call vundle#end()


filetype plugin indent on

" Settings for Airline: the tabline is bufferlist on top
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='base16_grayscale'
nnoremap <leader>t :AirlineTheme

"_______________________________________________________________________________
"
" General Settings
"-------------------------------------------------------------------------------

" There is a directory made for swap files to avoid clutter
"   If you do not have the directory, you will get an error
"   (( This is probably not the best options if you use multiple
"                                 files that have the same name. ))
"set dir=~/vimswap



" open a line below a comment without a comment
nnoremap <Leader><CR> jO



" Space, the final fronteir, is your leader
let mapleader =" "

" press a number to view a buffer in the list
nnoremap <Leader>b :ls<CR>:b<Space>


"open new buffers without saving
set hidden

" Toggle buffers with the tab key
"   Note: this overrides part of the jump list feature.
"   If you want to use both, map something to tab or ^I (same thing)
nnoremap <Tab> :bn<CR>

" shift-tab goes to previous buffer
nnoremap <S-Tab> :bp<CR>

" Do not require shift to enter command (swap keys)
nnoremap ; :
nnoremap : ;

" Use jk to exit insert mode
imap jk  <Esc>

" save with one key in either mode (I don't really use this)
nnoremap <F2> :wa<CR>
inoremap <F2> <Esc>:wa<CR>

" Leader-w writes in normal
nnoremap <leader>w :w<CR>

" Keep the cursor on the left and in the center
nnoremap j j0
nnoremap k k0
set so=17

"<CR> in normal mode inserts a newline and returns to normal
nnoremap <CR> o<Esc>

" Leader-d deletes the current buffer
nnoremap <leader>d :bd<CR>

" Leader rrr discards changes and reloads a file (like a compiler out)
nnoremap <leader>rrr :e!<CR>

" This deletes trailing whitespace on all files on save
autocmd BufWritePre * :call DltTrlngWhtSpc()
function! DltTrlngWhtSpc()
  execute "normal! mz"
  %s/\s\+$//ge
  exe "normal! 'z"
endfunc

"two spaces for indentation (NO TABS)
set shiftwidth=2
set tabstop=2
set expandtab

"source vimrc
nnoremap <leader>s :so %<CR>

"explore the CURRENT working file's directory, UNLESS it's only a buffer
"   :Ex[plore] is the directory vim was opened in
"   also because using :Ex[plore] will take over the current buffer
"   therefore it is only used when there is no file
if ( 'exe e%:h')
  nnoremap <leader>e :e%:h<CR>:set number<CR>:set rnu<CR>
else
  nnoremap <leader>e :Exp<CR>
endif


"_______________________________________________________________________________
"
" SEARCH AND HIGHLIGHT SETTINGS
"-------------------------------------------------------------------------------

" This allows extend tab options in the minibuffer and with C-p
set wildmenu

" The color of visual-mode and search highlights
hi Visual ctermbg=4 ctermfg=8
hi Search ctermbg=4 ctermfg=8

" Turn the damn parenthetical highlighting off
let loaded_matchparen = 1

" Toggle highlighting with <leader>h ... the default is off
nnoremap <leader>h :set hlsearch!<cr>

" The search is case sensative if uppercase chars are included
set ignorecase
set smartcase

" Start searching while I'm typing
set incsearch

" The commented line below clears the search var.  It may be useful
" command Search let @/ = ""


"_______________________________________________________________________________
"
" LINES, MARKERS, INDENTATION
"-------------------------------------------------------------------------------

" I really hate line wrapping with vertical splits
set nowrap

" The next lines change the color of the screen over 80 chars
let &colorcolumn=join(range(81,999),",")
hi colorcolumn ctermbg=8

"The next lines make characters typed over 80 red
hi OverLength ctermfg=1
match OverLength /\%81v.\+/

" Relative line numbers with true line number on current line.
" Default margin of 4 to be consistant between files
"set rnu
set number
"nnoremap <leader>n :setlocal number! rnu!<cr>
nnoremap <leader>n :setlocal number! <cr>

" Set up the cursor line with its colors and numbers
set cursorline
hi CursorLine cterm=NONE ctermbg=8
hi LineNr ctermfg=7 ctermbg=8
hi CursorLineNr ctermfg=7 ctermbg=0


" Status bar displays by defualt
set laststatus=2

" These colors are used when airline is not present (ssh)
" Second line for splits
hi StatusLine ctermfg=black ctermbg=cyan
hi StatusLineNC ctermfg=black ctermbg=black


"_______________________________________________________________________________
"
" SPLITS
"-------------------------------------------------------------------------------

" Make the character narrower and make it blend in
set fillchars+=vert:\

" slit color
hi VertSplit ctermfg=8 ctermbg=8

" Use the arrow keys to resize the splits and <leader><tab> to toggle focus
if bufwinnr(1)
  nnoremap <Left> <C-W><
  nnoremap <Right> <C-W>>
  nnoremap <Up> <C-W>-
  nnoremap <Down> <C-W>+
  nnoremap <leader><tab> <C-W>W
endif



"_______________________________________________________________________________
"
" Making 80 character lines
"-------------------------------------------------------------------------------

" Using the & in insert mode, you can make a line.
" To override, leave a space between, and go back and delete it later.
inoremap ---- <Esc>:pu = '--------------------------------------------------------------------------------'<CR>kddo
inoremap ____ <Esc>:pu = '________________________________________________________________________________'<CR>kddo
inoremap #### <Esc>:pu = '################################################################################'<CR>kddo
inoremap .... <Esc>:pu = '................................................................................'<CR>kddo
inoremap /*** <Esc>:pu = '/*******************************************************************************'<CR>kddo

