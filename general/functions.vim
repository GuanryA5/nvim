" Turn spellcheck on for markdown files
augroup auto_spellcheck
  autocmd BufNewFile,BufRead *.md setlocal spell
augroup END

fun! MyBuflineFormat(bufnr)
  let A = '%#TabLineSel#'
  let B = bufnr('%') == a:bufnr ? '%#PmenuSel#' : '%#TabLine#'
  let name = bufname(a:bufnr) != '' ? bufname(a:bufnr) : '...'
  return printf('%s %s %s %s ', A, a:bufnr, B, name)
endfun

augroup illuminate_augroup
  autocmd!
  autocmd VimEnter * hi link illuminatedWord CursorLine
augroup END

augroup relative_numbser
  autocmd!
  autocmd InsertEnter * :set norelativenumber
  autocmd InsertLeave * :set relativenumber
augroup END


au! BufWritePost $MYVIMRC source %
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

command! -nargs=0 Prettier :CocCommand prettier.formatFile
augroup relative_numbser
    autocmd!
    autocmd InsertEnter * :set norelativenumber
    autocmd InsertLeave * :set relativenumber
augroup END


autocmd BufNewFile,BufRead,BufEnter startify,coc-explorer :set number
