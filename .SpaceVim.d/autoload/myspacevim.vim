function! myspacevim#before() abort

endfunction

function! myspacevim#after()
  set nofoldenable

  " nim-specific
  au FileType nim setlocal tabstop=4 shiftwidth=4 softtabstop=0

  " sauce-specific
  au BufRead,BufNewFile *.sauce set filetype=sauce
  au FileType sauce setlocal tabstop=4 shiftwidth=4 softtabstop=0
  
  " trim trailing spaces on certain filetypes
  au FileType nimble,nim,js,sauce autocmd BufWritePre <buffer> %s/\s\+$//e

endfunction

