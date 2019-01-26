if !exists('g:polyglot_disabled') || index(g:polyglot_disabled, 'dart') == -1

setlocal cindent
setlocal cinoptions-=(2s,u2s
setlocal cinoptions+=(1s,u1s

setlocal indentexpr=DartIndentFlutter()

if exists("*DartIndentFlutter")
  finish
endif

function! DartIndentFlutter()
  " Default to cindent in most cases
  let indentTo = cindent(v:lnum)

  let previousLine = getline(prevnonblank(v:lnum - 1))
  let currentLine = getline(v:lnum)

  " Don't indent after an annotation
  if previousLine =~# '^\s*@.*$'
    let indentTo = indent(v:lnum - 1)
  endif

  " Do not indent );
  if currentLine =~# '^\s*)[,;]\?$'
    let indentTo = indent(v:lnum - 1) - &shiftwidth
  elseif previousLine =~# '^\s*)[,;]\?$' && !(currentLine =~# '^\s*[\]\}]')
    let indentTo = indent(v:lnum - 1)
  endif

  " Indent after opening List literal
  if previousLine =~# '\[$' && !(currentLine =~# '^\s*\]')
    let indentTo = indent(v:lnum - 1) + &shiftwidth
  endif

  return indentTo
endfunction

endif
