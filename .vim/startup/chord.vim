call arpeggio#load()

let g:arpeggio_timeoutlen=40

Arpeggio inoremap <silent> jk <ESC>
Arpeggio inoremap <silent> tru true
Arpeggio inoremap <silent> fal false
Arpeggio inoremap <silent> exp export
Arpeggio inoremap <silent> def default
Arpeggio inoremap <silent> thi this
Arpeggio inoremap <silent> fro from
Arpeggio inoremap <silent> int interface
Arpeggio inoremap <silent> cla class
Arpeggio inoremap <silent> imt imt<space><ESC>:call UltiSnips#ExpandSnippet()<CR>
Arpeggio inoremap <silent> use us<space><ESC>:call UltiSnips#ExpandSnippet()<CR>
Arpeggio inoremap <silent> var var<space><ESC>:call UltiSnips#ExpandSnippet()<CR>
Arpeggio inoremap <silent> con con<space><ESC>:call UltiSnips#ExpandSnippet()<CR>
Arpeggio inoremap <silent> csl cl<space><ESC>:call UltiSnips#ExpandSnippet()<CR>
Arpeggio inoremap <silent> csv cv<space><ESC>:call UltiSnips#ExpandSnippet()<CR>
Arpeggio inoremap <silent> ret re<space><ESC>:call UltiSnips#ExpandSnippet()<CR>
Arpeggio inoremap <silent> fua f<space><ESC>:call UltiSnips#ExpandSnippet()<CR>
Arpeggio inoremap <silent> fun fun<space><ESC>:call UltiSnips#ExpandSnippet()<CR>
Arpeggio inoremap <silent> for for<space><ESC>:call UltiSnips#ExpandSnippet()<CR>
Arpeggio inoremap <silent> bef bef<space><ESC>:call UltiSnips#ExpandSnippet()<CR>
Arpeggio inoremap <silent> des des<space><ESC>:call UltiSnips#ExpandSnippet()<CR>
Arpeggio inoremap <silent> req req<space><ESC>:call UltiSnips#ExpandSnippet()<CR>

" Emmet
Arpeggio imap ., <C-y>,

" JsDoc
Arpeggio nnoremap doc :JsDoc<CR>
