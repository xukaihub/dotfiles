"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-buffet
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Show index before each buffer name. Index is useful for switching between buffers quickly
let g:buffet_show_index = 1

noremap <Tab> :bn<CR>
noremap <S-Tab> :bp<CR>

nmap <leader>1 <Plug>BuffetSwitch(1)
nmap <leader>2 <Plug>BuffetSwitch(2)
nmap <leader>3 <Plug>BuffetSwitch(3)
nmap <leader>4 <Plug>BuffetSwitch(4)
nmap <leader>5 <Plug>BuffetSwitch(5)
nmap <leader>6 <Plug>BuffetSwitch(6)
nmap <leader>7 <Plug>BuffetSwitch(7)
nmap <leader>8 <Plug>BuffetSwitch(8)
nmap <leader>9 <Plug>BuffetSwitch(9)
nmap <leader>0 <Plug>BuffetSwitch(10)

