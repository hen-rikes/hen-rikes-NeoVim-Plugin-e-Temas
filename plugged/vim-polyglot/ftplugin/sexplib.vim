if polyglot#init#is_disabled(expand('<sfile>:p'), 'ocaml', 'ftplugin/sexplib.vim')
  finish
endif

" Vim filetype plugin file
" Language:    Sexplib
" Maintainer:  Markus Mottl        <markus.mottl@gmail.com>
" URL:         https://github.com/ocaml/vim-ocaml
" Last Change:
"              2017 Apr 12 - First version (MM)

if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin=1

" Comment string
setl commentstring=;\ %s
setl comments=n:;

let b:undo_ftplugin = "setl cms< com<"
