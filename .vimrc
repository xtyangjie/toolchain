set nocompatible                " be iMproved

""" {{{ bundle config begin
filetype off                    " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"" -- Bundles here --

" -- original repos on github --

" -- vim-scripts repos --
Bundle 'a.vim'

" let vundle manage vundle
Bundle 'gmarik/vundle'
Bundle 'uarun/vim-protobuf'
Bundle 'Valloric/YouCompleteMe'

" -- non github repos --
" Bundle 'git://git.wincent.com/command-t.git'

" open filetype plugin after bundle config
filetype plugin indent on

""" }}} bundle config end


set number
set autoindent

map <F9> :NERDTreeToggle<CR>
map <F2> :tabprevious<CR>
map <F3> :tabnext<CR>
map <F4> :q<CR>
map <F5> :tablast<CR>
map <F6> :tabnew<CR>
map <F8> zfa{
map <F7> zo
map <F10> :Tlist<CR>
nnoremap <C-N> :NERDTreeFind<CR>

syntax enable
syntax on
colorscheme desert

set expandtab
set tabstop=4
set shiftwidth=4
set hlsearch

set fencs=utf-8,gbk
set fileencoding=utf-8

set backspace=2
filetype plugin on

set ruler

set backspace=2
set noswapfile
set et
set sw=4
set ts=4
set sts=4
set encoding=utf-8

map ee <C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><CR>
map ek <C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><CR>

map ew <C-W><C-W>
map ec :q<CR>
map ep :set paste<CR>
map enp :set nopaste<CR>

"map eb :set cursorline|hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white|set cursorcolumn|hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white<CR><CR> 

let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1
let Tlist_Show_One_File=1
let Tlist_Ctags_Cmd="/usr/bin/ctags"

let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_quick_match = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_auto_select = 1

function! SearchWord()
    let w = expand("<cword>");
    :tabnew
    execute "vimgrep ".w." **/*.c **/*.cc **/*.h **/*.hh **/*.hpp **/*"
    :copen
endfunction

map ef :call SearchWord()<CR><CR>

function! ReplaceTab()
    :retab
endfunction

map et :call ReplaceTab()<CR>


nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-@>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>





