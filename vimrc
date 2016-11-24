syntax on

" Tabs
set tabstop=8
set softtabstop=4
set expandtab

" Indents
set cindent
set autoindent
set shiftwidth=4
filetype indent plugin on

" Only two tabs for R
autocmd Filetype r setlocal tabstop=2 shiftwidth=2 softtabstop=2

" Remove dreaded wrap
set nowrap

" New window placement
set splitbelow
set splitright

" Highlight search term while search
set incsearch

" Autocomplete with tab in insertmode
imap <Tab> <C-n>

" Allow pasting from clipboard
set clipboard=unnamedplus

" Ruler line at 80 chars
set cc=80
highlight ColorColumn ctermbg=233

" Highlight trailing whitespace
highlight ExtraWhitespace ctermbg=9
match ExtraWhitespace /\s\+$/

" Add html syntax higlighting to .tag
" Add markdown syntax highlighting to .md
au BufNewFile,BufRead *.tag set filetype=html
au BufNewFile,BufReadPost *.md set filetype=markdown

" Add syntax highlighting for code in markdown
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'r']

" Go syntax highlighting
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" Pathogen plugins
execute pathogen#infect()
