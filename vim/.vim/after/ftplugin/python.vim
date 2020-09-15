set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set autoindent
set smartindent
set fileformat=unix
set textwidth=79

setlocal colorcolumn=80
setlocal path=.,**
setlocal wildignore=*/__pycache__/*,*.pyc

" Setup include search
" check the current include by looking at the register for include
" =&include
"
" Trick to make the regex properly escaped:   :s/\(|\|\\\)/\\\1/g
" Note that the space had to be manually escaped.
set include=^\\s*\\(from\\\|import\\)\\s*\\zs\\(\\S\\+\\s\\{-}\\)*\\ze\\($\\\|\ as\\)

function! PyInclude(fname)
  let parts = split(a:fname, ' import ')
  let l = parts[0]
  if len(parts) > 1
    let r = parts[1]
    let joined = join([l, r], '.')
    let fp = substitute(joined, '\', '/', 'g') . '.py'
    " echom fp
    let found = glob(fp, 1)
    " echom found
    if len(found)
      return found
    endif
  endif

  return substitute(l, '\', '/', 'g') . '.py'

endfunction

setlocal includeexpr=PyInclude(v:fname)
setlocal define=^\\s*\\<\\(def\\\|class\\)\\>
