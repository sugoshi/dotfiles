if exists('b:did_ftplugin')
    finish
endif
let b:did_ftplugin=1

setlocal tabstop=2
setlocal shiftwidth=2
setlocal expandtab
setlocal foldmethod=expr
setlocal foldexpr=AsciidocLevel()

function! AsciidocLevel()
  if getline(v:lnum) =~ '^== .*$'
    return ">1"
  elseif getline(v:lnum) =~ '^\s*$' && getline(v:lnum+1) =~ '^== .*$'
    return "<1"
  else
    return "="
  endif
endfunction
