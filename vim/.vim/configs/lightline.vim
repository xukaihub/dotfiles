"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => lightline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:lightline = {
       \ 'colorscheme': 'onedark',
       \ 'enable': { 'tabline': 0 },
       \ 'component_function': {
           \ 'filetype': 'MyFiletype',
           \ 'fileformat': 'MyFileformat',
           \ }
       \}

" vim-devicons for lightline
function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileformat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction
