call pathogen#infect()
call pathogen#helptags()

" Enable filetype plugins 
syntax on
filetype plugin indent on

" airline-vim configuration
set laststatus=2
set noshowmode
let g:bufferline_echo = 0
let g:airline_theme='solarized'

" powerline integration for airline
let g:airline_powerline_fonts = 0
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

" map leader key to , character
let mapleader = ','

" map moving between buffers to <leader> + x or y
nnoremap <silent> <leader>x :bn<CR>
nnoremap <silent> <leader>y :bp<CR>

" map tagbar to <leader> + b
nnoremap <silent> <Leader>b :TagbarToggle<CR>

" map NERDTree to <leader> + n
nnoremap <silent> <Leader>n :NERDTreeToggle<CR>

" configure tagbar to close after focusing on a tag
let g:tagbar_autoclose = 1
let g:tagbar_autofocus = 1

" enable ctags file search
set tags=tags;/

au BufWritePost *.go silent! !ctags -R 2> /dev/null &

" activate line numbers
set number
:highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

" Solarized
syntax on
set background=dark
let g:solarized_termcolors = 256
colorscheme solarized

" Set to auto read when a file is changed from the outside
set autoread

" Always show current position
set ruler

" Use spaces instead of tabs
set expandtab
  
" Be smart when using tabs ;)
set smarttab

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

" Format scala code
let g:scala_sort_across_groups=1
au BufEnter *.scala setl formatprg=java\ -jar\ /Users/stefanb/Exec/scalariform.jar\ -f\ -q\ +alignParameters\ +alignSingleLineCaseStatements\ +doubleIndentClassDeclaration\ +preserveDanglingCloseParenthesis\ +rewriteArrowSymbols\ +preserveSpaceBeforeArguments\ --stdin\ --stdout
nmap <leader>m :SortScalaImports<CR>gggqG<C-o><C-o><leader><w>

" Rainbow parantheses
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
 
function! Comment()
  let ext = tolower(expand('%:e'))
  if ext == 'php' || ext == 'rb' || ext == 'sh' || ext == 'py'
    silent s/^/\#/
  elseif ext == 'js' || ext == 'scala'
    silent s:^:\/\/:g
  elseif ext == 'vim'
    silent s:^:\":g
  endif
endfunction
 
function! Uncomment()
  let ext = tolower(expand('%:e'))
  if ext == 'php' || ext == 'rb' || ext == 'sh' || ext == 'py'
    silent s/^\#//
  elseif ext == 'js' || ext == 'scala'
    silent s:^\/\/::g
  elseif ext == 'vim'
    silent s:^\"::g
  endif
endfunction
 
map <C-a> :call Comment()<CR>
map <C-b> :call Uncomment()<CR>

" colorcolumn / print margin
:set colorcolumn=120

" activate neocomplete with manual completion
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#disable_auto_complete = 1

" activate Ctrlp
nnoremap <leader>. :CtrlPTag<cr>

" set wrapping for filetypes
au BufRead,BufNewFile *.md setlocal textwidth=80

" go configuration
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" Enable mouse scrolling
:set mouse=a

" Disable visual line wrapping
:set nowrap
