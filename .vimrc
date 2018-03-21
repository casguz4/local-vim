execute pathogen#infect()
syntax on
filetype plugin indent on
set tabstop=2 shiftwidth=2 expandtab
set autoindent
set smartindent
set number

colorscheme rupza

let mapleader = ","
"Togle tab expansion
nmap <Leader>h :call ExpandTabToggle()<cr>

function! ExpandTabToggle()
  if &expandtab
    setlocal noexpandtab
  else
    setlocal expandtab
  endif
  echom "Expand Tab" &expandtab
endfunction

" Disable tab expansion for HLM projects
autocmd BufNewFile,BufRead ~/projects/* set noexpandtab
