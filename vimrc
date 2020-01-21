""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Vundle
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype off                  " required
" set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"PLUGINS HERE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 Plugin 'VundleVim/Vundle.vim'
 Plugin 'vimwiki/vimwiki'
 Plugin 'tpope/vim-surround'
 Plugin 'jiangmiao/auto-pairs'
 Plugin 'davidhalter/jedi-vim' 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"All of your Plugins must be added before the following line
 call vundle#end()            " required
 filetype plugin indent on    " required
  "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" COMMANDS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""Config plugins""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configure types of braces autoPairs should use
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:AutoPairs={'(':')', 
            \'[':']', 
            \'{':'}',
            \"'":"'",
            \'"':'"',
            \ "`":"`",
            \'```':'```',
            \'"""':'"""',
            \"'''":"'''",
            \'$':'$'}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"VIM/WIKI SETETINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""Vim"
filetype plugin on
syntax on

""VimWiki"
let wiki = { }
let wiki.path = "/Users/m/Library/Mobile Documents/com~apple~CloudDocs/vimwiki"
let wiki.template_default = 'default'
let wiki.template_ext = '.html'
let wiki.nested_syntaxes = {'python': 'python', 'c++': 'cpp', 'html': 'html'}
let wiki.automatic_nested_syntaxes = 1
let wiki.auto_tags = 1
let wiki.auto_diary_index = 1
let wiki.auto_toc = 1
let g:vimwiki_list = [wiki]
"set omnifunc=syntaxcomplete#Complete


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""Vanilla vim configs"""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"TAB CONFIGURATION & line numbers 
" no tabs
" expand tab means hitting tab actually uses spaces
" tabstop determines how many columns tab counts for
" shiftwidth means how many columns indented for re-indent
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=4 shiftwidth=4 expandtab
set number
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"DETECT LONG LINES
"If a line exceeds 80 mark it in red
"Highlight 80th column
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%100v.\+/
"" Highlight market at 80th column
"if exists('+colorcolumn')
"  set colorcolumn=100
"else
"  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
"endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Get rid of annoying color artificats command.
"I use this when coppying tex code from the web
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <F12> :%s/\\color.*\}/<CR>
