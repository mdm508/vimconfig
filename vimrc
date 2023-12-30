" ====================== Vundle Plugin Manager =======================
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vimwiki/vimwiki'
Plugin 'tpope/vim-surround'
Plugin 'jiangmiao/auto-pairs'
Plugin 'davidhalter/jedi-vim'

call vundle#end()
filetype plugin indent on

" ====================== General Settings ============================
syntax on
set tabstop=4 shiftwidth=4 expandtab
set number
set lazyredraw
set synmaxcol=200
set backup
set undofile
set backupdir=~/.vim/backup//
set undodir=~/.vim/undo//
nnoremap <leader>e :Explore<CR>

" ====================== Plugin Configuration ========================
" AutoPairs
let g:AutoPairs={'(':')', '[':']', '{':'}', "'":"'", '"':'"', '`':'`', '```':'```', '"""':'"""', "'''":"'''"}

" VimWiki
let wiki = {}
let wiki.path = '~/Documents/vimwiki'
let wiki.template_default = 'default'
let wiki.template_ext = '.html'
let wiki.nested_syntaxes = {'python': 'python', 'c++': 'cpp', 'html': 'html'}
let wiki.automatic_nested_syntaxes = 1
let wiki.auto_tags = 1
let wiki.auto_diary_index = 1
let wiki.auto_toc = 1
let g:vimwiki_list = [wiki]

" ====================== End of Configuration ========================
