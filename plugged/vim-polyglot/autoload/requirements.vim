if polyglot#init#is_disabled(expand('<sfile>:p'), 'requirements', 'autoload/requirements.vim')
  finish
endif

""
" @section Introduction, intro
" @library
" <doc/@plugin(name).txt> is generated by <https://github.com/google/vimdoc>.
" See <README.md> for more information about installation and screenshots.

""
" Update cache.
function! requirements#update_cache() abort
    let s:items = []
    let l:pip_items = split(system('COMP_WORDS="pip install -" COMP_CWORD=2 PIP_AUTO_COMPLETE=1 pip'))
    let l:pypi_items = split(system('pip-cache pkgnames'))
    for l:item in l:pip_items
        let s:items += [{'word': l:item, 'menu': 'pip'}]
    endfor
    for l:item in l:pypi_items
        let s:items += [{'word': l:item, 'menu': 'pypi'}]
    endfor
    call writefile([json_encode(s:items)], s:cache)
endfunction

if exists('*stdpath')
    let s:cache_dir_home = stdpath('cache')
else
    let s:cache_dir_home = $HOME . '/.cache/nvim'
endif
let s:cache_dir = s:cache_dir_home . '/requirements.vim'
call mkdir(s:cache_dir, 'p')
""
" Completion cache path.
call g:requirements#utils#plugin.Flag('g:requirements#cache',
            \ s:cache_dir . '/requirements.json'
            \ )
let s:cache = g:requirements#cache
try
    let s:items = json_decode(readfile(s:cache)[0])
catch /\v^Vim%(\(\a+\))?:E(684|484|491):/
    call requirements#update_cache()
    let s:items = json_decode(readfile(s:cache)[0])
endtry
""
" Completion cache contents. For program.
call g:requirements#utils#plugin.Flag('g:requirements#items', s:items)
" vim: et sw=4 ts=4 sts=4:
