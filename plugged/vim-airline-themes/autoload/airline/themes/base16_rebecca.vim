" Base16 Rebecca vim-airline-theme (https://github.com/dawikur/base16-vim-airline-themes)
" For vim-airline (https://github.com/vim-airline/vim-airline)
" By Victor Borja (http://github.com/vic) based on Rebecca Theme (http://github.com/vic/rebecca-theme)

let s:scheme_slug = substitute("rebecca", "-", "_", "g")

let g:airline#themes#base16_{s:scheme_slug}#palette = {}

" GUI color definitions
let s:gui00 = '#292a44'
let s:gui01 = '#663399'
let s:gui02 = '#383a62'
let s:gui03 = '#666699'
let s:gui04 = '#a0a0c5'
let s:gui05 = '#f1eff8'
let s:gui06 = '#ccccff'
let s:gui07 = '#53495d'
let s:gui08 = '#a0a0c5'
let s:gui09 = '#efe4a1'
let s:gui0A = '#ae81ff'
let s:gui0B = '#6dfedf'
let s:gui0C = '#8eaee0'
let s:gui0D = '#2de0a7'
let s:gui0E = '#7aa5ff'
let s:gui0F = '#ff79c6'

" Terminal color definitions
let s:cterm00        = "00"
let s:cterm03        = "08"
let s:cterm05        = "07"
let s:cterm07        = "15"
let s:cterm08        = "01"
let s:cterm0A        = "03"
let s:cterm0B        = "02"
let s:cterm0C        = "06"
let s:cterm0D        = "04"
let s:cterm0E        = "05"
if exists("base16colorspace") && base16colorspace == "256"
	let s:cterm01        = "18"
	let s:cterm02        = "19"
	let s:cterm04        = "20"
	let s:cterm06        = "21"
	let s:cterm09        = "16"
	let s:cterm0F        = "17"
else
	let s:cterm01        = "10"
	let s:cterm02        = "11"
	let s:cterm04        = "12"
	let s:cterm06        = "13"
	let s:cterm09        = "09"
	let s:cterm0F        = "14"
endif

let g:airline#themes#base16_{s:scheme_slug}#palette.normal = airline#themes#generate_color_map(
	\ [ s:gui01, s:gui04, s:cterm01, s:cterm04 ],
	\ [ s:gui04, s:gui02, s:cterm04, s:cterm02 ],
	\ [ s:gui04, s:gui01, s:cterm04, s:cterm01 ])
let g:airline#themes#base16_{s:scheme_slug}#palette.normal_modified = {
	\ 'airline_c' : [ s:gui07, s:gui01, s:cterm07, s:cterm01 ]}

let g:airline#themes#base16_{s:scheme_slug}#palette.insert = airline#themes#generate_color_map(
	\ [ s:gui01, s:gui0B, s:cterm01, s:cterm0B ],
	\ [ s:gui04, s:gui02, s:cterm04, s:cterm02 ],
	\ [ s:gui04, s:gui01, s:cterm04, s:cterm01 ])
let g:airline#themes#base16_{s:scheme_slug}#palette.insert_modified = {
	\ 'airline_c' : [ s:gui07, s:gui01, s:cterm07, s:cterm01 ]}

let g:airline#themes#base16_{s:scheme_slug}#palette.replace = airline#themes#generate_color_map(
	\ [ s:gui01, s:gui0E, s:cterm01, s:cterm0E ],
	\ [ s:gui04, s:gui02, s:cterm04, s:cterm02 ],
	\ [ s:gui04, s:gui01, s:cterm04, s:cterm01 ])
let g:airline#themes#base16_{s:scheme_slug}#palette.replace_modified = {
	\ 'airline_c' : [ s:gui07, s:gui01, s:cterm07, s:cterm01 ]}

let g:airline#themes#base16_{s:scheme_slug}#palette.visual = airline#themes#generate_color_map(
	\ [ s:gui01, s:gui09, s:cterm01, s:cterm09 ],
	\ [ s:gui04, s:gui02, s:cterm04, s:cterm02 ],
	\ [ s:gui04, s:gui01, s:cterm04, s:cterm01 ])
let g:airline#themes#base16_{s:scheme_slug}#palette.visual_modified = {
	\ 'airline_c' : [ s:gui07, s:gui01, s:cterm07, s:cterm01 ]}

let g:airline#themes#base16_{s:scheme_slug}#palette.inactive = airline#themes#generate_color_map(
	\ [ s:gui01, s:gui01, s:cterm01, s:cterm01 ],
	\ [ s:gui04, s:gui01, s:cterm04, s:cterm01 ],
	\ [ s:gui05, s:gui01, s:cterm05, s:cterm01 ])
