"_______________________________________________________________________________
"===============================================================================
" File:       ~/.vimrc
" Author:     jeSager
" Modified:   Tuesday,30 May 2017
"
" Notes:
"             1. Space, the final fronteir, is your leader
"             2. <Leader>S will reload the vimrc without exiting vim
"                ... BUT... BUT <Leader>s will open a buffer split :D
"             3. colors:
"
"
"===============================================================================

" vi is off (only improved)
set nocompatible


"_______________________________________________________________________________
"===============================================================================
"
" Vundle Plugins
"-------------------------------------------------------------------------------

" These lines are required for the vundle config (see github for details)
" The plugins must be added in the plugin-block before vundle#end

" Filetypes must be initialized AFTER the plugin-block
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

" Note that airline requires a unicode terminal font
" Using Droid Sans Mono for Powerline
call vundle#begin()
  Plugin 'vundlevim/vundle.vim'
  Plugin 'vim-airline/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'
call vundle#end()

filetype plugin indent on

" Settings for Airline: the tabline is bufferlist on top
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_powerline_fonts = 1
let g:airline_theme='base16_grayscale'
nnoremap <leader>t :AirlineTheme




"_______________________________________________________________________________
"===============================================================================
"
" General Settings / Remappings
"-------------------------------------------------------------------------------

" I do not like swapfiles.  Swapfiles are evil.
" Use :wa to write all files and close tmux with f12
set noswapfile
set autochdir

" Read md files as markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" Open new buffers without saving
set hidden

" Space, the final fronteir, is your leader
let mapleader =" "


" Jump between empty lines with capital letters
" Applied in normal and visual modes
nnoremap K {
vnoremap K {
nnoremap J }
vnoremap J }


" We've remapped J, join lines like so:
nnoremap <leader>j J


" Leader # switches to a buffer number
nnoremap <Leader>1 :b 1<CR>
nnoremap <Leader>2 :b 2<CR>
nnoremap <Leader>3 :b 3<CR>
nnoremap <Leader>4 :b 4<CR>
nnoremap <Leader>5 :b 5<CR>
nnoremap <Leader>6 :b 6<CR>
nnoremap <Leader>7 :b 7<CR>
nnoremap <Leader>8 :b 8<CR>
nnoremap <Leader>9 :b 9<CR>


" Easy copy/paste from gui reg
"   If you always use this to yank,
"   you will not overwrite the register by deleting
vnoremap <Leader>y "+y
nnoremap <Leader>y "+y
nnoremap <Leader>p "+p

" Open a line below a comment without a comment
nnoremap <Leader><CR> jO

" Press a number to view a buffer in the list
nnoremap <Leader>l :ls<CR>:b<Space>

" Loop through buffers with the tab key
" Shift-tab goes to previous buffer
"   This overrides part of the jump list feature.
"   I do not care
nnoremap <Tab> :bn<CR>
nnoremap <S-Tab> :bp<CR>

" Do not require shift to enter command (swap keys)
nnoremap ; :
nnoremap : ;

" Use jk to exit insert mode
imap jk  <Esc>

" save with one key in either mode
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

" This deletes trailing whitespace on all files on save
autocmd BufWritePre * :call DltTrlngWhtSpc()
function! DltTrlngWhtSpc()
  execute "normal! mz"
  %s/\s\+$//ge
  exe "normal! 'z"
endfunc



" expandtab:    Setting that inserts spaces instead of tab characters
" shiftwidth:   This controls the << and >> operation in normal mode
" tabstop:      Number of columns used to DISPLAY a tab

"two spaces for indentation (NO TABS)
set shiftwidth=2
set tabstop=2
set expandtab

" Not sure I want this command for python right now
" au BufRead,BufNewFile *.py set shiftwidth=4 | set tabstop=4

" Open vimrc
nnoremap <Leader>. :e ~/.vimrc<CR>
" Source vimrc
nnoremap <leader>S :w\| so ~/.vimrc<CR>:echo"New Settings Applied"<CR>


nnoremap <leader>e :e%:h<CR>
let g:netrw_banner=0

"let g:netrw_browse_split=4
"function! MyExplore()
"  vertical topleft split | e%:h | vertical resize 20
"  nnoremap <buffer> <Tab> <C-W>W
"  nnoremap <buffer> <Esc> <C-W>W
"  nnoremap <buffer> <Leader>e :bd<CR>
""  au WinLeave <buffer> close
"endfunction
"nnoremap <leader>e :call MyExplore()<CR>


"explore the CURRENT working file's directory, UNLESS it's only a buffer
"   :Ex[plore] is the directory vim was opened in
"   also because using :Ex[plore] will take over the current buffer
"   therefore it is only used when there is no file
"if ( 'exe e%:h')
"  nnoremap <leader>e :e%:h<CR>:set number<CR>:set rnu<CR>
"else
"  nnoremap <leader>e :Exp<CR>
"endif

" need command to turn off on exit
" error:  if nav and don't open file
" >>> handle differently if current window?

"
"
" " no extra netrw buffers
" autocmd FileType netrw setl bufhidden=wipe
"
" " Toggle Vexplore
" function! ToggleVExplorer()
"   if exists("t:expl_buf_num")
"     let expl_win_num = bufwinnr(t:expl_buf_num)
"     let cur_win_nr = winnr()
"     exec expl_win_num . 'wincmd w'
"     close
"     exec cur_win_nr . 'wincmd w'
"     unlet t:expl_buf_num
"   else
" "    let g:netrw_altv=1
"     let g:netrw_browse_split=4
"     if winwidth(0) > 150
"       let g:netrw_winsize=12
"     else
"       let g:netrw_winsize=20
"     endif
"     exec '1wincmd w'
"     Vexplore
"     let t:expl_buf_num = bufnr("%")
"     nnoremap <buffer> <Tab> <C-W>W
"     nnoremap <buffer> <S-Tab> <C-W>W
"     nnoremap <buffer> <silent> <Space>d :call ToggleVExplorer()<CR>
"     nnoremap <buffer> <silent> :bd :call ToggleVExplorer()<CR>
"   endif
" endfunction
" nnoremap <silent> <leader>e :call ToggleVExplorer()<CR>


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

" These colors are used when airline is not present
" Second line for splits
hi StatusLine ctermfg=black ctermbg=cyan
hi StatusLineNC ctermfg=black ctermbg=black


"_______________________________________________________________________________
"
" SPLITS
"-------------------------------------------------------------------------------

" choose a vertical split for the right
nnoremap <Leader>v :ls<CR>:echo"Select Buffer to split Right or press <\Esc>"<CR>:bo vs\|b<Space>
" choose a horizonal split for below
nnoremap <Leader>s :ls<CR>:echo"Select Buffer to split Below or press<\Esc>"<CR>:bo sp\|b<Space>


" close the split ( not the buffer )
nnoremap <Leader>c :close<CR>
" lazy only window ( ^^ as in close the other window )
nnoremap <leader>o :only<CR>


" Make the character narrower
set fillchars+=vert:\

" split color ~ same as num bg
hi VertSplit ctermfg=8 ctermbg=8

" Use the arrow keys to resize vertical splits
" Use the plus and underscore to resize horizontal splits
" Use <leader><leader> to toggle focus
nnoremap <Left> <C-W><
nnoremap <Right> <C-W>>
nnoremap _ <C-W>-
nnoremap + <C-W>+
nnoremap <leader><leader> <C-W>W


"_______________________________________________________________________________
"
" Abbreviations
"-------------------------------------------------------------------------------
iab Date: <Esc>;r! date "+\%A,\%e \%B \%Y"<CR>kddiDate:<Tab><Tab><Esc>o
iab Modified: <Esc>;r! date "+\%A,\%e \%B \%Y"<CR>kddiModified:<Tab><Tab><Esc>o

iab intmin int min = ( this < that ) ? this : that;
iab intmax int max = ( this > that ) ? this : that;
iab afor for( int i = 0; i < HOW_MANY; ++i )<ESC>FHviw
iab foreach for( int elt : DATA )<Esc>FDviw
iab vfor for( vector<int>::iterator it = DATA.begin(); it != DATA.end(); ++it)<Esc>;s/DATA//g<LEFT><LEFT>

iab &-- --------------------------------------------------------------------------------<CR>
iab &&_ ________________________________________________________________________________<CR>
iab &## ################################################################################<CR>
iab &.. ................................................................................<CR>
iab &** /*******************************************************************************<CR>
iab &** *******************************************************************************/<CR>
