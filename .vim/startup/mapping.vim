" Disable arrow keys
nno <up> <Nop>
nno <down> <Nop>
nno <left> <Nop>
nno <right> <Nop>
ino <up> <Nop>
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
vno <up> <Nop>
vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
cno <up> <Nop>
cno <down> <Nop>

" General keys
let mapleader=','
inoremap jk <ESC>
nnoremap <leader>o o<ESC>k<Esc>
nnoremap <leader>O O<ESC>j<Esc>
nnoremap <leader>w :wa<CR>
nnoremap <leader>r :so $MYVIMRC<CR>
nnoremap <leader>a :Ag! -Q<SPACE>

" highlight last inserted text
nnoremap gV `[v`]

" Searching
nnoremap / /\V
vnoremap / /\V

" Folding
nnoremap <space> za
nnoremap <leader><space> zR

" Moving up and down work as you would expect
nnoremap j gjzz
nnoremap k gkzz
nnoremap ^ g^
nnoremap $ g$

" Always keep the cursor at the center of the screen
nnoremap <C-f> <C-f>zz
nnoremap <C-b> <C-b>zz
nnoremap <C-u> <C-u>zz
nnoremap <C-d> <C-d>zz
nnoremap * *zz
nnoremap # #zz
nnoremap n nzz
nnoremap N Nzz

" This unsets the "last search pattern" register by hitting return
nnoremap <silent> <CR> :noh<CR><CR>

" Shortcut for entering the command mode
nnoremap ; :

" Substitution
nnoremap & :&&<CR>
xnoremap & :&&<CR>

" Remap to make it filter the command history
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" Easy expansion of the active file directory
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" Buffer
nnoremap <silent> <leader>b :CtrlPBuffer<CR>
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>
nnoremap <silent> <leader>. <C-^>
nnoremap <silent> <leader>q :lclose<bar>b#<bar>bd #<CR> " Close Location windows, switch to the previous buffer and close the last switched buffer
nnoremap <silent> <leader>c :NERDTreeClose<bar>bufdo bd<CR> " Close NERDTree before deleting buffer, otherwise, it'll close the vim because "bd" will close related window

" Tab
nnoremap <silent> <TAB><TAB> :NERDTreeTabsToggle<CR>
nnoremap <silent> ]t :tabn<CR>
nnoremap <silent> [t :tabp<CR>
nnoremap <silent> tt :tabnew<CR>

" Commands
command! -nargs=1 E execute('silent! !mkdir -p "$(dirname "<args>")"') <Bar> e <args>

" Tagbar
"nnoremap <silent> <S-TAB> :TagbarToggle<CR>

" Location list
nnoremap <silent> [l :lprevious<CR>
nnoremap <silent> ]l :lnext<CR>

" Quickfix list
"nnoremap <silent> [c :cprevious<CR>
"nnoremap <silent> ]c :cnext<CR>

" Easy motion
nmap ]f <leader><leader>f
nmap [f <leader><leader>F

" Make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:ycm_always_populate_location_list = 0
let g:ycm_open_loclist_on_ycm_diags = 0

" Better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<CR>'
let g:UltiSnipsJumpBackwardTrigger = '<leader><CR>'

" Dash
nmap <silent> <leader>d <Plug>DashSearch

" Git
nmap <silent> <leader>h :Gblame<CR>

" Syntastic
nnoremap <silent> <leader>s :SyntasticCheck<CR>

" Airline
"nmap <leader>1 <Plug>AirlineSelectTab1
"nmap <leader>2 <Plug>AirlineSelectTab2
"nmap <leader>3 <Plug>AirlineSelectTab3
"nmap <leader>4 <Plug>AirlineSelectTab4
"nmap <leader>5 <Plug>AirlineSelectTab5
"nmap <leader>6 <Plug>AirlineSelectTab6
"nmap <leader>7 <Plug>AirlineSelectTab7
"nmap <leader>8 <Plug>AirlineSelectTab8
"nmap <leader>9 <Plug>AirlineSelectTab9
