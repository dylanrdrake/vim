call pathogen#infect()


"""" show syntax group of item under cursor
function! SyntaxItem()
  return synIDattr(synID(line("."),col("."),1),"name")
endfunction

set statusline+=%f\|
set statusline+=%{SyntaxItem()}
set statusline+=%=
set statusline+=%-7.(%l,%c%V%)\ %<%P


"""" switch kj to escape without moving back one space 
":inoremap kj <Esc>`^


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
"let g:paredit_electric_return=0



"""" necessary for rainbow-parenthesis
au BufEnter * RainbowParenthesesActivate
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces



"""" Tabs and Spaces
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
autocmd BufNewFile,BufRead *.css set shiftwidth=2
autocmd BufNewFile,BufRead *.css set tabstop=2
autocmd BufNewFile,BufRead *.css set softtabstop=2
autocmd BufNewFile,BufRead *.js set shiftwidth=2
autocmd BufNewFile,BufRead *.js set tabstop=2
autocmd BufNewFile,BufRead *.js set softtabstop=2
autocmd BufNewFile,BufRead *.sol set shiftwidth=4
autocmd BufNewFile,BufRead *.sol set tabstop=4
autocmd BufNewFile,BufRead *.sol set softtabstop=4
autocmd BufNewFile,BufRead *.c set shiftwidth=4
autocmd BufNewFile,BufRead *.c set tabstop=4
autocmd BufNewFile,BufRead *.c set softtabstop=4
autocmd BufNewFile,BufRead *.cpp set shiftwidth=4
autocmd BufNewFile,BufRead *.cpp set tabstop=4
autocmd BufNewFile,BufRead *.cpp set softtabstop=4
autocmd BufNewFile,BufRead *.asm set shiftwidth=4
autocmd BufNewFile,BufRead *.asm set tabstop=4
autocmd BufNewFile,BufRead *.asm set softtabstop=4
autocmd BufNewFile,BufRead *.asm set filetype=nasm






"""" Formatting
set wildmenu

"""" line numbers
"set number
"set relativenumber

"""" line numbers only on for active window
":au WinEnter * :setlocal number
":au WinLeave * :setlocal nonumber

"""" Line wrapping
"set nowrap



"""" Colors
set t_Co=256
set background=dark

colorscheme PaperColor
autocmd BufNewFile,BufRead *.py colorscheme PaperColor
autocmd BufNewFile,BufRead *.clj colorscheme PaperColor
autocmd BufNewFile,BufRead *.html colorscheme PaperColor
autocmd BufNewFile,BufRead *.css colorscheme PaperColor
autocmd BufNewFile,BufRead *.js colorscheme PaperColor
autocmd BufNewFile,BufRead *.sol colorscheme molokai
autocmd BufNewFile,BufRead *.c colorscheme molokai
autocmd BufNewFile,BufRead *.asm colorscheme PaperColor
autocmd BufNewFile,BufRead *.cpp colorscheme PaperColor


set laststatus=2
if version >= 700
    au InsertEnter * highlight StatusLine ctermfg=203 ctermbg=236
    au InsertLeave * highlight StatusLine ctermfg=118 ctermbg=236
endif
