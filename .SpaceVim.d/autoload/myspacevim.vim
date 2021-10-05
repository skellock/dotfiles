function! myspacevim#before() abort

endfunction

function! myspacevim#after()
  set nofoldenable

  " just-specific
  au BufRead,BufNewFile *.justfile,*.just,justfile set filetype=make
  au FileType make setlocal tabstop=4 shiftwidth=4 softtabstop=0

  " nim-specific
  au FileType nim setlocal tabstop=4 shiftwidth=4 softtabstop=0 expandtab

  " kotlin
  au FileType kotlin setlocal tabstop=4 shiftwidth=4 softtabstop=0

  " swift
  au FileType swift setlocal tabstop=4 shiftwidth=4 softtabstop=0

  " sauce-specific
  au BufRead,BufNewFile *.sauce set filetype=sauce
  au FileType sauce setlocal tabstop=4 shiftwidth=4 softtabstop=0

  " trim trailing spaces on certain filetypes
  au FileType nimble,nim,js,sauce autocmd BufWritePre <buffer> %s/\s\+$//e

endfunction

