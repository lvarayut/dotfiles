syntax enable
set background=dark
set t_Co=256
colorscheme gruvbox
"let g:hybrid_custom_term_colors = 1
"colorscheme hybrid

" Disable background highlight and instead underline it
hi clear SpellBad
hi SpellBad cterm=underline

if g:colors_name == 'monokai'
  hi clear Error
  hi clear SpellLocal
  hi clear SpellCap
  hi clear SpellRare
  hi clear DiffText
  hi Error ctermfg=196
  hi SpellLocal cterm=underline
  hi DiffText ctermfg=189 ctermbg=67
endif
