call pathogen#runtime_append_all_bundles()

syntax on
filetype on
compiler ruby

"sets shell title to correct thing
set title

" bump up command history
set history=1000

" does good stuff with buffers
set hidden

" keep a bit of context around current cursor position
set scrolloff=5

set backupdir=/tmp
set directory=/tmp

if has('gui_running')
  " set default color scheme
  set background=light
  colorscheme solarized

  " default screen size
  set fuoptions=maxvert,maxhorz

  " turn off scrollbar
  set guioptions-=rL
endif

" make completion better
set wildmenu
set wildmode=list:longest
set wildignore+=*.o,*.obj,.git,.svn,*.jar,"help/**"

" invisible characters
set listchars=trail:.,tab:>-,eol:$
set nolist
:noremap ,i :set list!<CR> " Toggle invisible chars

" set default font
set gfn=Inconsolata:h16

" ignore case in searches, except if you type a capital letter
set ignorecase
set smartcase
set nohlsearch
set incsearch

" easy to source / edit this file
map ,s :source ~/.vimrc<CR>
map ,v :e ~/.vimrc<CR>

set go-=T " hide the toolbar by default
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

" NERDTree 
 
" Enable nice colors
let NERDChristmasTree = 1
 
" Make it easy to see where we are
let NERDTreeHighlightCursorline = 1
 
" Make bookmarks visible
let NERDTreeShowBookmarks = 1
 
" Show hidden files
let NERDTreeShowHidden = 1
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

" ruby tests from drew pope

map <silent> <LocalLeader>rb :RunAllRubyTests<CR>
map <silent> <LocalLeader>rc :RunRubyFocusedContext<CR>
map <silent> <LocalLeader>rf :RunRubyFocusedUnitTest<CR>

" rebuild ctags
map <silent> <LocalLeader>rt :!ctags -R --exclude=".git\|.svn\|log\|tmp\|db\|pkg" --extra=+f<CR> 

" show trailing whitespace
set listchars=tab:>-,trail:·,eol:$
nmap <silent> <leader>s :set nolist!<CR>

" turn off annoying messages
set shortmess=atI

" gundo
nnoremap <F5> :GundoToggle<CR>
