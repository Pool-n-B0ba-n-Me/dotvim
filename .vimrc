"
" Misc
"

helptags ~/.vim/doc
filetype plugin indent on
set nu
set pastetoggle=<F2>
set cindent
set cinoptions+=j1
set si

set ff=unix
"
" folding settings
"
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=0
set textwidth=0
set colorcolumn=80

"
" Color
"
syntax enable
syntax on
set t_Co=256
colorscheme jellybeans

"
" Mouse
"
set mouse=a

"
" Indentation
"
set smartindent
" Frameworks
"
"set expandtab
if &expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

else
"
"
" Kernel
"
"set noexpandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

endif
"
"
"
"Bootloader
"
"set tabstop=4
"set shiftwidth=4
"set expandtab
"
"set softtabstop=4
"
"
"autocmd FileType go setlocal noexpandtab
"autocmd FileType make setlocal noexpandtab
"function! TabToggle()
"if &expandtab
"    set noexpandtab
"  else
"    set expandtab
"  endif
"endfunction
"nmap <F9> mz:execute TabToggle()<CR>'z

"
" Highlight Commands
"
set hlsearch
highlight ExtraWhitespace ctermbg=red guibg=red
au ColorScheme * highlight ExtraWhitespace guibg=red
au BufEnter * match ExtraWhitespace /\s\+$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhiteSpace /\s\+$/
autocmd InsertLeave * redraw!
nmap <F5> :noh<CR>


"
" Macro to remove spaces
"
"function ShowSpaces(...)
"  let @/='\v(\s+$)|( +\ze\t)'
"  let oldhlsearch=&hlsearch
"  if !a:0
"    let &hlsearch=!&hlsearch
"  else
"    let &hlsearch=a:1
"  end
"  return oldhlsearch
"endfunction
"
"function TrimSpaces() range
"  let oldhlsearch=ShowSpaces(1)
"  execute a:firstline.",".a:lastline."substitute ///gec"
"  let &hlsearch=oldhlsearch
"endfunction

command -bar -nargs=? ShowSpaces call ShowSpaces(<args>)
command -bar -nargs=0 -range=% TrimSpaces <line1>,<line2>call TrimSpaces()
nnoremap <F6>   m`:TrimSpaces<CR>``
vnoremap <F6>   :TrimSpaces<CR>


"
" Logcat highlighting
"
au BufRead,BufNewFile *.logcat set filetype=logcat

"
" Syntax highlighting extensions
"
au BufNewFile,BufRead *.sig set filetype=sml
au BufNewFile,BufRead *.l1 set filetype=cpp
au BufNewFile,BufRead *.l2 set filetype=cpp
au BufNewFile,BufRead *.l3 set filetype=cpp
au BufNewFile,BufRead *.l4 set filetype=cpp

set ignorecase

set clipboard=unnamed

