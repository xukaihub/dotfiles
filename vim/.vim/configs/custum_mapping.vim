"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Custum Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <leader>l :set list<CR>
nmap <leader>ll :set nolist<CR>

" set listchars=tab:▸\ ,eol:¬\,
" set listchars=tab:→\ ,
set listchars=tab:▸\ ,

"Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

nmap <leader>[ :set nu<CR>:set relativenumber<CR>
nmap <leader>] :set nonu<CR>:set norelativenumber<CR>

" Ctrl-m map to Ctrl-z
nmap <C-m> <C-z>
