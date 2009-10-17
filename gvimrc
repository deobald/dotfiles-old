syntax on
filetype on
compiler ruby

if has('gui_running')
  " do some gui specific stuff here?
endif

" set default color scheme
colorscheme wombat

" set default font
set gfn=Inconsolata:h14

" ignore case in searches, except if you type a capital letter
set ignorecase
set smartcase

" easy to source / edit this file
map ,s :source ~/.vimrc<CR>
map ,v :e ~/.vimrc<CR>

" default screen size
set lines=50
set columns=150

set go-=T " hide the toolbar by default
syntax on " turn on syntax highlighting
set nu " show line numbers
filetype plugin on " figure out filetype automatically
filetype indent on " indent based on filetype
set ruler " show ruler
set autoread " auto read updates to file from outside vim

" remove tabs for 2 spaces
set autoindent
set smartindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smarttab
set cindent

" fuzzy finder mapping
" map <leader>t :FuzzyFinderFile<CR>

" renew finder cache shortcut
map <leader>r :FuzzyFinderRenewCache<CR>

map <leader>t :NERDTree<CR>

"au BufRead *.rb :emenu Snippets.ruby
"au BufRead *.rake :emenu Snippets.ruby
au BufNewFile,BufRead *.nant set filetype=xml

" split editing settings
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_ 
set wmh=0

" ack integration
set grepprg=ack\ -a
set swb=newtab " switch buffer mode opens a new tab

" taglist shortcuts
nnoremap <silent> <leader>T :TlistToggle<CR>

" Remap autocomplete to CTRL+SPACE
inoremap <C-space> <C-n>

" Remap alt-j alt-k to insert blank lines without going to insert mode
nnoremap <silent><D-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><D-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

set showmatch
set matchtime=1

" vimclojure
let vimclojure#NailgunClient = "$HOME/opt/clojure/vimclojure/ng"
let clj_want_gorilla = 1
let clj_highlight_builtins = 1
let clj_highlight_contrib = 1
let clj_paren_rainbow = 1
