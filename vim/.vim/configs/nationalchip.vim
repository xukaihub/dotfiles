"============================================================================================
" 以下是强制配置，不得修改，须放在 .vimrc 的最后面
"============================================================================================
set fencs=utf-8,cp936

" 删除行尾空格
nnoremap <leader>f :%s/\s\+$//<cr>

function! KRIndent()
    let c_space_errors = 0
    set fileformats=unix
    set textwidth=120
    set noexpandtab
    set shiftround
    set cindent
    set formatoptions=tcqlron
    set cinoptions=:0,l1,t0,g0
    syntax keyword cType u8 u16 u32 u64 s8 s16 s32 s64 off64_t
    highlight default link LinuxError ErrorMsg

    syntax match LinuxError / \+\ze\t/     " spaces before tab
    syntax match LinuxError /\s\+$/        " trailing whitespaces
    "syntax match LinuxError /\%121v.\+/    " virtual column 121 and more
    "autocmd BufWrite <buffer> :%s/\s\+$//e " 文件保存时，自动删除行尾空格
endfunction
if has("autocmd")
    autocmd FileType c,cpp,h,hh call KRIndent()
endif
