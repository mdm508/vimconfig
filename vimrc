" ====================== Vundle Plugin Manager =======================
set nocompatible
filetype off

" Check if the OS is Windows
if has('win32') || has('win64')
    set rtp+=~/vimfiles/bundle/Vundle.vim
    call vundle#begin('~/vimfiles/bundle')
    " Specfic to gVim
    set guifont=Consolas:h16
else
    " Assume macOS or other Unix-like OS
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
endif


Plugin 'VundleVim/Vundle.vim'
Plugin 'vimwiki/vimwiki'
Plugin 'tpope/vim-surround'
Plugin 'jiangmiao/auto-pairs'

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
set textwidth=80 "gq[movement] to reformat
set colorcolumn=80
" set backupdir=~/.vim/backup//
set undodir=~/.vim/undo//
nnoremap <leader>e :Explore<CR>
set backspace=indent,eol,start "enable backspace
set spell
set spelllang=en


" ====================== Plugin Configuration ========================
" AutoPairs
let g:AutoPairs={'(':')', '[':']', '{':'}', "'":"'", '"':'"', '`':'`', '```':'```', '"""':'"""', "'''":"'''"}

" VimWiki
let wiki = {}
let wiki.path = 'C:\Users\metta\Documents\GitHub\mdm508.github.io\vimwiki'
let wiki.path_html = 'C:/Users/metta/Documents/GitHub/mdm508.github.io/content/wiki'
let wiki.template_default = 'default'
let wiki.template_ext = '.html'
let wiki.nested_syntaxes = {'python': 'python', 'c++': 'cpp', 'html': 'html'}
let wiki.automatic_nested_syntaxes = 1
let wiki.auto_tags = 1
let wiki.auto_diary_index = 1
let wiki.auto_toc = 1
let wiki.diary_frequency = 'weekly'
let wiki.diary_caption_level = 1 "level 1 captions
let g:vimwiki_list = [wiki]

"" Remapped commands
nnoremap html :VimwikiAll2HTML<CR>
command! Diary VimwikiDiaryIndex
augroup vimwikigroup
    autocmd!
    " automatically update links on read diary
    autocmd BufRead,BufNewFile diary.wiki VimwikiDiaryGenerateLinks
augroup end


"" Builds HTML, pushes to git
command! Push execute 'VimwikiAll2HTML' | execute 'cd C:/Users/metta/Documents/GitHub/mdm508.github.io' | w | execute '!git add -A && git commit -m "Commit via Vim" && git push'




" ====================== End of Configuration ========================
