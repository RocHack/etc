set nocompatible
set hidden
filetype plugin indent on
syntax on
set cindent

set mouse=a

augroup stuff
	au!
	au BufWritePost /etc/smtpd/aliases !smtpctl update table aliases
	au BufWritePost /etc/smtpd/aliases-dandyhacks !smtpctl update table aliases-dandyhacks
	au BufWritePost /etc/smtpd/domains !smtpctl update table domains
	au BufWritePost ~/.vimrc so %
augroup END

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
