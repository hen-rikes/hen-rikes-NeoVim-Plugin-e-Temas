if polyglot#init#is_disabled(expand('<sfile>:p'), 'dart', 'indent/dart.vim')
  finish
endif

if exists('b:did_indent')
  finish
endif
let b:did_indent = 1

setlocal cindent
setlocal cinoptions+=j1,J1,U1,m1,+2s
if get(g:, 'dart_trailing_comma_indent', v:false)
  setlocal cinoptions+=(2s,u2s
else
  setlocal cinoptions+=(s,us
endif

setlocal indentexpr=DartIndent()

let b:undo_indent = 'setl cin< cino<'

if exists('*DartIndent')
  finish
endif

function! DartIndent()
  " Default to cindent in most cases
  let indentTo = cindent(v:lnum)

  let previousLine = getline(prevnonblank(v:lnum - 1))
  let currentLine = getline(v:lnum)

  " Don't indent after an annotation
  if previousLine =~# '^\s*@.*$'
    let indentTo = indent(v:lnum - 1)
  endif

  " Indent after opening List literal
  if previousLine =~# '\[$' && !(currentLine =~# '^\s*\]')
    let indentTo = indent(v:lnum - 1) + &shiftwidth
  endif

  return indentTo
endfunction
