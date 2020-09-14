let g:indentLine_setColors = 0
" let g:indentLine_bgcolor_term = 202
" let g:indentLine_bgcolor_gui = '#FF5F00'
" Vim
let g:indentLine_color_term = 239

" GVim
let g:indentLine_color_gui = '#A4E57E'

" none X terminal
let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 1 " (default: 2)

" Background (Vim, GVim)
let g:indentLine_bgcolor_term = 202
let g:indentLine_bgcolor_gui = '#FF5F00'

let g:indentLine_bufNameExclude = ['startify', 'coc-explorer']
let g:indentLine_bufTypeExclude = ['help', 'terminal', 'explorer', 'coc-explorer']
let g:indentLine_fileTypeExclude = ['coc-explorer']

let g:indentLine_char_list = ['|', '¦', '┆', '┊']
" let g:pretty_indent_namespace = nvim_create_namespace('pretty_indent')

" function! PrettyIndent()
"     let l:view=winsaveview()
"     call cursor(1, 1)
"     call nvim_buf_clear_namespace(0, g:pretty_indent_namespace, 1, -1)
"     while 1
"         let l:match = search('^$', 'W')
"         if l:match ==# 0
"             break
"         endif
"         let l:indent = cindent(l:match)
"         if l:indent > 0
"             call nvim_buf_set_virtual_text(
"             \   0,
"             \   g:pretty_indent_namespace,
"             \   l:match - 1,
"             \   [[repeat(repeat(' ', &shiftwidth - 1) . '│', l:indent / &shiftwidth), 'IndentGuide']],
"             \   {}
"             \)
"         endif
"     endwhile
"     call winrestview(l:view)
" endfunction

" augroup PrettyIndent
"     autocmd!
"     autocmd TextChanged * call PrettyIndent()
"     autocmd BufEnter * call PrettyIndent()
"     autocmd InsertLeave * call PrettyIndent()
" augroup END

" autocmd FileType coc-explorer call Explorer_indent_toggle()

" function! Explorer_indent_toggle()  abort
"   let g:indentLine_enabled = 0
" endfunction
