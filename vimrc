call pathogen#infect()



"""" toggle quickfix window
:noremap <space> :call asyncrun#quickfix_toggle(8)<cr>

"""" automatically open quickfix when Async runs
augroup vimrc
    autocmd User AsyncRunStart call asyncrun#quickfix_toggle(8, 1)
augroup END



"""" necessary for paredit.vim
syntax on
filetype on
filetype plugin on
filetype indent on

"""" keep parens from going to next line
let g:paredit_electric_return=0



"""" necessary for rainbow-parenthesis
"autocmd BufNewFile,BufRead *.py RainbowParenthesesToggle
"autocmd BufNewFile,BufRead *.py RainbowParenthesesLoadRound
"autocmd BufNewFile,BufRead *.py RainbowParenthesesLoadSquare
"autocmd BufNewFile,BufRead *.py RainbowParenthesesLoadBraces
"autocmd BufNewFile,BufRead *.clj RainbowParenthesesToggle
"autocmd BufNewFile,BufRead *.clj RainbowParenthesesLoadRound
"autocmd BufNewFile,BufRead *.clj RainbowParenthesesLoadSquare
"autocmd BufNewFile,BufRead *.clj RainbowParenthesesLoadBraces

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces



set expandtab
set shiftround
autocmd BufNewFile,BufRead *.py set shiftwidth=4
autocmd BufNewFile,BufRead *.py set tabstop=4
autocmd BufNewFile,BufRead *.py set softtabstop=4
autocmd BufNewFile,BufRead *.clj set shiftwidth=2
autocmd BufNewFile,BufRead *.clj set tabstop=2
autocmd BufNewFile,BufRead *.clj set softtabstop=2
autocmd BufNewFile,BufRead *.html set shiftwidth=2
autocmd BufNewFile,BufRead *.html set tabstop=2
autocmd BufNewFile,BufRead *.html set softtabstop=2




set wildmenu

"""" line numbers
"set number
"set relativenumber

"""" line numbers only on for active window
":au WinEnter * :setlocal number
":au WinLeave * :setlocal nonumber

set nowrap

set t_Co=256
set background=dark

autocmd BufNewFile,BufRead *.py colorscheme PaperColor
autocmd BufNewFile,BufRead *.clj colorscheme molokai
autocmd BufNewFile,BufRead *.html colorscheme PaperColor

"set laststatus=2
"if version >= 700
"    au InsertEnter * highlight StatusLine ctermfg=203 ctermbg=236
"    au InsertLeave * highlight StatusLine ctermfg=118 ctermbg=236
"endif
