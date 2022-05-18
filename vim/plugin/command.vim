function! s:cmdstart(...)
  execute '!start "%:p:h"'
endfunction
command! -bar -nargs=? CmdStart call s:cmdstart(<f-args>)
