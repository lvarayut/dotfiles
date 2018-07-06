" Airline
set laststatus=2
set ttimeoutlen=50
let g:airline_theme = 'powerlineish'
let g:airline_powerline_fonts = 1
let g:airline#extensions#hunks#enabled=1
let g:airline#extensions#branch#enabled=1
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#buffer_idx_mode = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline_symbols.linenr = '␊'


" Syntastic
let g:stateline_syntastic=0
let g:syntastic_html_checkers=[''] " Don't check html type
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_mode_map = { 'passive_filetypes': ['sass', 'scss'] } " Don't auto check sass and scss file because a checker for these file types are slow

" This does what it says on the tin. It will check your file on open too, not just on save. You might not want this, so just leave it out if you don't.
let g:syntastic_check_on_open = 0 "Check on open a file
let g:syntastic_check_on_wq = 0 "Don't check on close
let g:syntastic_always_populate_loc_list = 1 "Always load the error to a location list
let g:syntastic_auto_loc_list = 2 "Not auto open the location list
"let g:syntastic_loc_list_height = 5 "Location list height
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "!"
"let g:syntastic_warning_symbol = "⚠"

" jscs returns exit code when no config file is present.
" Only load it when appropriate.
function! JavascriptCheckers()
  if filereadable(getcwd() . '/.jscsrc')
    return ['eslint', 'jscs']
  else
    return ['eslint']
  endif
endfunction

let g:syntastic_javascript_checkers = JavascriptCheckers()

" Use local eslint, if it exists
if executable("./node_modules/.bin/eslint")
  let g:syntastic_javascript_eslint_exec = "./node_modules/.bin/eslint"
endif

" Ctrlp
let g:ctrlp_map='<leader>f'
let g:ctrlp_prompt_mappings = {
      \ 'AcceptSelection("h")': ['<c-s>'],
      \ 'AcceptSelection("v")': ['<c-v>'],
      \ 'PrtSelectMove("j")':   ['<c-n>'],
      \ 'PrtSelectMove("k")':   ['<c-p>'],
      \ 'PrtHistory(-1)':       [],
      \ 'PrtHistory(1)':        [],
      \ }

if executable('ag')
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
else
  let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
endif

" Multi cursor
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-k>'
let g:multi_cursor_quit_key='<C-c>' "Remap ESC key to avoid ;95c problem, need the backslash to make it works

" Golden view
let g:goldenview__enable_default_mapping = 0

" NERDTree
let g:NERDTreeMapOpenSplit='s'
let g:NERDTreeMapOpenVSplit='v'

" Editorconfig
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

" Javascript libraries syntax
let g:used_javascript_libs = 'angularjs, angularui, angularuirouter, chai, flux, jasmine, jquery, react, underscore'

" Ag
let g:ag_prg="ag --vimgrep --smart-case"
let g:ag_highlight=1

" Jsbeautify
autocmd FileType javascript nnoremap <buffer> <silent> <leader>= :call JsBeautify()<CR>
autocmd FileType html nnoremap <buffer> <silent> <leader>= :call HtmlBeautify()<CR>
autocmd FileType css nnoremap <buffer> <silent> <leader>= :CSScomb<CR>
autocmd FileType json nnoremap <buffer> <silent> <leader>= :call JsonBeautify()<CR>

autocmd FileType javascript vnoremap <buffer> <silent> <leader>= :call RangeJsBeautify()<CR>
autocmd FileType html vnoremap <buffer> <silent> <leader>= :call RangeHtmlBeautify()<CR>
autocmd FileType css vnoremap <buffer> <silent> <leader>= :CSScomb<CR>
autocmd FileType json vnoremap <buffer> <silent> <leader>= :call RangeJsonBeautify()<CR>

" Vim Instant Markdown
let g:instant_markdown_autostart = 0

" Tern
set completeopt-=preview " Disable preview window

" Vim JSX
let g:jsx_ext_required = 0

" TypeScript
let g:typescript_compiler_options = '--target ES5 --jsx'
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

" Emmet
" Support JSX
let g:user_emmet_settings = {'html':{'quote_char': "'"}}

" IndentLine
"let g:indentLine_char='︙'
"let g:indentLine_faster=1
