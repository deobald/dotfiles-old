syntax on
filetype on
compiler ruby

set backupdir=/tmp
set directory=/tmp

if has('gui_running')
  " set default color scheme
  colorscheme simplewhite

  " default screen size
  set fuoptions=maxvert,maxhorz

  " turn off scrollbar
  set guioptions-=rL

  " Unmap Apple+Shift+T and map to goto method
  macmenu &File.Open\ Tab\.\.\. key=<nop>
  nnoremap <D-T> :FufTag!<CR>
endif

" helpful insertion shortcuts?
imap uu _
imap hh =>
imap aa @

" invisible characters
set listchars=trail:.,tab:>-,eol:$
set nolist
:noremap ,i :set list!<CR> " Toggle invisible chars

" set default font
set gfn=Inconsolata:h16

" ignore case in searches, except if you type a capital letter
set ignorecase
set smartcase

" easy to source / edit this file
map ,s :source ~/.vimrc<CR>
map ,v :e ~/.vimrc<CR>

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

" map comments to apple/
nmap <D-/> ,c<Space>
vmap <D-/> ,c<Space>
imap <D-/> <C-O>,c<Space>

" bind command-] to shift right
nmap <D-]> >>
vmap <D-]> >>
imap <D-]> <C-O>>>
 
" bind command-[ to shift left
nmap <D-[> <<
vmap <D-[> <<
imap <D-[> <C-O><<

" fuzzy finder mapping
map <leader>t :FuzzyFinderFile<CR>

" renew finder cache shortcut
map <leader>r :FuzzyFinderRenewCache<CR>

" NERDTree 
 
" Enable nice colors
let NERDChristmasTree = 1
 
" Make it easy to see where we are
let NERDTreeHighlightCursorline = 1
 
" Make bookmarks visible
let NERDTreeShowBookmarks = 1
 
" Show hidden files
let NERDTreeShowHidden = 1
"Don't hijack NETRW
"let NERDTreeHijackNetrw = 0
let NERDTreeIgnore=['\.$', '\~$']
 
" Make F2 open NERDTree
nmap <F2> :NERDTreeToggle<CR>

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

let clj_want_gorilla = 1
let clj_highlight_builtins = 1
let clj_highlight_contrib = 1
let clj_paren_rainbow = 1

" ruby tests from drew pope

map <silent> <LocalLeader>rb :RunAllRubyTests<CR>
map <silent> <LocalLeader>rc :RunRubyFocusedContext<CR>
map <silent> <LocalLeader>rf :RunRubyFocusedUnitTest<CR>

" rebuild ctags
map <silent> <LocalLeader>rt :!ctags -R --exclude=".git\|.svn\|log\|tmp\|db\|pkg" --extra=+f<CR>
