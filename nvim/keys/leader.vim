" Map leader to which_key
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
set timeoutlen=100

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" change the colors if you want
highlight default link whichkey          operator
highlight default link whichkeyseperator diffadded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler


" Single mappings
let g:which_key_map['/'] = [ ':call Comment()'            , '注释选行' ]
let g:which_key_map['c'] = [ ':Commands'                  , '搜索命令' ]
let g:which_key_map['h'] = [ 'Startify'                   , '打开起始页' ]
let g:which_key_map['d'] = [ ':bd'                        , '删除当前buffer']
let g:which_key_map['e'] = [ ':CocCommand explorer'       , '打开资源管理器' ]
let g:which_key_map['h'] = [ '<C-W>s'                     , '横向分屏']
let g:which_key_map['q'] = [ 'q'                          , '退出' ]
let g:which_key_map['r'] = [ ':RnvimrToggle'              , '打开ranger文件浏览器' ]
let g:which_key_map['S'] = [ ':SSave'                     , '保存当前会话' ]
let g:which_key_map['T'] = [ ':Rg'                        , '搜索文本内容' ]
let g:which_key_map['v'] = [ '<C-W>v'                     , '垂直分屏到右边']
let g:which_key_map['W'] = [ 'w'                          , '保存' ]
let g:which_key_map['z'] = [ 'Goyo'                       , 'zen模式' ]
let g:which_key_map['<Tab>'] = [ ':e#' , '打开最后编辑的文件']

let g:which_key_map.1 = 'Win1'
let g:which_key_map.2 = 'Win2'
let g:which_key_map.3 = 'Win3'
let g:which_key_map.4 = 'Win4'
let g:which_key_map.5 = 'Win5'
let g:which_key_map.6 = 'Win6'
let g:which_key_map.7 = 'Win7'
let g:which_key_map.8 = 'Win8'
let g:which_key_map.9 = 'Win9'



" Group mappings

let g:which_key_map[' '] = {
      \ 'name': '+tab' ,
      \ '1' : [ '<Plug>AirlineSelectTab1', 'tab-1' ],
      \ '2' : [ '<Plug>AirlineSelectTab1', 'tab-2' ],
      \ '3' : [ '<Plug>AirlineSelectTab1', 'tab-3' ],
      \ '4' : [ '<Plug>AirlineSelectTab1', 'tab-4' ],
      \ '5' : [ '<Plug>AirlineSelectTab1', 'tab-5' ],
      \ '6' : [ '<Plug>AirlineSelectTab1', 'tab-6' ],
      \ '7' : [ '<Plug>AirlineSelectTab1', 'tab-7' ],
      \ '8' : [ '<Plug>AirlineSelectTab1', 'tab-8' ],
      \ '9' : [ '<Plug>AirlineSelectTab1', 'tab-9' ],
      \ 'N' : [':tabnew',                  '新建标签'],
      \ 'c' : [':tabc',                    '关闭标签'],
      \ 'o' : [':tabo',                    '关闭其他所有标签'],
      \ 'f' : [':tabfrist',                '切换到第一个标签'],
      \ 'l' : [':tablast',                 '切换到最后一个标签'],
      \ 'p' : ['tabp',                     '切换到上一个标签'],
      \ 'n' : ['tabn',                     '切换到下一个标签'],
      \ }

" a is for actions
let g:which_key_map.a = {
      \ 'name': '+align' ,
      \ 'a':    [ '<Plug>(EasyAlign)'  , 'Align Action' ],
      \ }


" b is for buffer
let g:which_key_map['b'] = {
  \ 'name' : '+ buffer',
  \ 'f' : [ 'bfirst'                     , '切换到第一个buffer' ],
  \ 'l' : [ 'blast'                      , '切换到最后一个buffer' ],
  \ 'n' : [ 'bnext'                      , '切换下个buffer' ],
  \ 'p' : [ 'bprevious'                  , '切换上个buffer'],
  \ 'L' : [ ':Buffers'                   , '列出所有buffers' ],
  \ 'd' : [ ':bd'                        , '删除当前buffer' ],
  \ '?' : [ 'Buffers'                    , 'FZF Buffers' ],
  \}


let g:which_key_map['c'] = {
      \ 'name' : '+Code',
      \ 'e' : [ '<S-Q>'        , '切换ex模式'],
      \ 'c' : [ ':Codi'        , '开启实时代码预览(Codi)' ],
      \ 'C' : [ ':Codi!'       , '关闭实时代码预览(Codi)' ],
      \ 's' : [ ':let @/ = ""' , '关闭搜索代码高亮' ],
      \ 'r' : [ ':set relativenumber!' , '开启相对行号' ],
      \}

" s is for search
let g:which_key_map.s = {
      \ 'name' : '+search' ,
      \ '/' : [':History/'              , 'history'],
      \ ';' : [':Commands'              , 'commands'],
      \ 'a' : [':Ag'                    , 'text Ag'],
      \ 'b' : [':BLines'                , 'current buffer'],
      \ 'B' : [':Buffers'               , 'open buffers'],
      \ 'c' : [':Commits'               , 'git Commits'],
      \ 'C' : [':BCommits'              , 'guffer commits'],
      \ 'f' : [':Files'                 , 'files'],
      \ 'g' : [':GFiles'                , 'git files'],
      \ 'G' : [':GFiles?'               , 'modified git files'],
      \ 'h' : [':History'               , 'file history'],
      \ 'H' : [':History:'              , '历史命令(History:)'],
      \ 'l' : [':Lines'                 , 'lines'] ,
      \ 'm' : [':Marks'                 , 'marks'] ,
      \ 'M' : [':Maps'                  , 'normal maps'] ,
      \ 'p' : [':Helptags'              , 'help tags'] ,
      \ 'P' : [':Tags'                  , 'project tags'],
      \ 's' : [':CocList snippets'      , '代码snippets'],
      \ 'S' : [':Colors'                , 'color schemes'],
      \ 't' : [':Rg'                    , '搜索匹配内容的所有文件'],
      \ 'T' : [':BTags'                 , '搜索缓冲区所有Tags'],
      \ 'w' : [':Windows'               , '搜索所有windows'],
      \ 'y' : [':Filetypes'             , '所搜并变更Filetypes'],
      \ 'z' : [':FZF'                   , 'FZF'],
      \ }

" g is for git
let g:which_key_map.g = {
      \ 'name' : '+git' ,
      \ 'a' : [':Git add .'                        , 'add all'],
      \ 'A' : [':Git add %'                        , 'add current'],
      \ 'b' : [':Git blame'                        , 'blame'],
      \ 'B' : [':GBrowse'                          , 'browse'],
      \ 'c' : [':Git commit'                       , 'commit'],
      \ 'd' : [':Git diff'                         , 'diff'],
      \ 'D' : [':Gdiffsplit'                       , 'diff split'],
      \ 'g' : [':GGrep'                            , 'git grep'],
      \ 'G' : [':Gstatus'                          , 'status'],
      \ 'h' : [':GitGutterLineHighlightsToggle'    , 'highlight hunks'],
      \ 'H' : ['<Plug>(GitGutterPreviewHunk)'      , 'preview hunk'],
      \ 'j' : ['<Plug>(GitGutterNextHunk)'         , 'next hunk'],
      \ 'k' : ['<Plug>(GitGutterPrevHunk)'         , 'prev hunk'],
      \ 'l' : [':Git log'                          , 'log'],
      \ 'p' : [':Git push'                         , 'push'],
      \ 'P' : [':Git pull'                         , 'pull'],
      \ 'r' : [':GRemove'                          , 'remove'],
      \ 's' : ['<Plug>(GitGutterStageHunk)'        , 'stage hunk'],
      \ 'S' : [':!git status'                       , 'status'],
      \ 't' : [':GitGutterSignsToggle'             , 'toggle signs'],
      \ 'u' : ['<Plug>(GitGutterUndoHunk)'         , 'undo hunk'],
      \ 'v' : [':GV'                               , 'view commits'],
      \ 'V' : [':GV!'                              , 'view buffer commits'],
      \ }

" l is for language server protocol
let g:which_key_map.l = {
      \ 'name' : '+lsp' ,
      \ '.' : [':CocConfig'                          , '打开配置文件'],
      \ ';' : ['<Plug>(coc-refactor)'                , 'refactor'],
      \ 'a' : ['<Plug>(coc-codeaction)'              , 'line action'],
      \ 'A' : ['<Plug>(coc-codeaction-selected)'     , 'selected action'],
      \ 'b' : [':CocNext'                            , 'next action'],
      \ 'B' : [':CocPrev'                            , 'prev action'],
      \ 'c' : [':CocList commands'                   , 'commands'],
      \ 'd' : ['<Plug>(coc-definition)'              , 'definition'],
      \ 'D' : ['<Plug>(coc-declaration)'             , 'declaration'],
      \ 'e' : [':CocList extensions'                 , 'extensions'],
      \ 'f' : ['<Plug>(coc-format-selected)'         , 'format selected'],
      \ 'F' : ['<Plug>(coc-format)'                  , 'format'],
      \ 'h' : ['<Plug>(coc-float-hide)'              , 'hide'],
      \ 'i' : ['<Plug>(coc-implementation)'          , 'implementation'],
      \ 'I' : [':CocList diagnostics'                , 'diagnostics'],
      \ 'j' : ['<Plug>(coc-float-jump)'              , 'float jump'],
      \ 'l' : ['<Plug>(coc-codelens-action)'         , 'code lens'],
      \ 'n' : ['<Plug>(coc-diagnostic-next)'         , 'next diagnostic'],
      \ 'N' : ['<Plug>(coc-diagnostic-next-error)'   , 'next error'],
      \ 'o' : ['<Plug>(coc-openlink)'                , 'open link'],
      \ 'O' : [':CocList outline'                    , 'outline'],
      \ 'p' : ['<Plug>(coc-diagnostic-prev)'         , 'prev diagnostic'],
      \ 'P' : ['<Plug>(coc-diagnostic-prev-error)'   , 'prev error'],
      \ 'q' : ['<Plug>(coc-fix-current)'             , 'quickfix'],
      \ 'r' : ['<Plug>(coc-rename)'                  , 'rename'],
      \ 'R' : ['<Plug>(coc-references)'              , 'references'],
      \ 's' : [':CocList -I symbols'                 , 'references'],
      \ 'S' : [':CocList snippets'                   , 'snippets'],
      \ 't' : ['<Plug>(coc-type-definition)'         , 'type definition'],
      \ 'u' : [':CocListResume'                      , 'resume list'],
      \ 'U' : [':CocUpdate'                          , 'update CoC'],
      \ 'v' : [':Vista!!'                            , 'tag viewer'],
      \ 'z' : [':CocDisable'                         , 'disable CoC'],
      \ 'Z' : [':CocEnable'                          , 'enable CoC'],
      \ }

" t is for terminal
let g:which_key_map.t = {
      \ 'name' : '+toggle' ,
      \ 'c' : [':call(Switvchthemes)'                           , '切换主题'],
      \ 't' : [':FloatermNew --wintype=popup --height=6'        , '打开terminal'],
      \ 'f' : [':FloatermNew fzf'                               , 'fzf'],
      \ 'g' : [':FloatermNew lazygit'                           , 'git'],
      \ 'd' : [':FloatermNew lazydocker'                        , 'docker'],
      \ 'n' : [':FloatermNew node'                              , 'node'],
      \ 'p' : [':FloatermNew python'                            , 'python'],
      \ 'r' : [':FloatermNew ranger'                            , 'ranger'],
      \ 'T' : [':FloatermToggle'                                , 'toggle'],
      \ 'y' : [':FloatermNew ytop'                              , 'ytop'],
      \ 's' : [':FloatermNew ncdu'                              , 'ncdu'],
      \ }

let g:which_key_map.T = {
         \ 'name' : '+Tab',
        \ 'N' : [':tabnew',           '新建标签'],
          \ 'c' : [':tabc',           '关闭标签'],
          \ 'o' : [':tabo',   '关闭其他所有标签'],
      \ 'f' : [':tabfrist',   '切换到第一个标签'],
       \ 'l' : [':tablast', '切换到最后一个标签'],
           \ 'p' : ['tabp',   '切换到上一个标签'],
           \ 'n' : ['tabn',   '切换到下一个标签'],
                       \ }


" w is for windows
let g:which_key_map.w = {
      \ 'name' : '+windows' ,
      \ 'N' : [':enew'                                         , '新建窗口并编辑文件'],
      \ 'S' : [':new'                                          , '新建水平窗口并编辑新文件'],
      \ 'V' : [':vnew'                                         , '新建垂直窗口并编辑新文件'],
      \ 's' : [':split'                                        , '新建水平窗口并编辑当前文件'],
      \ 'v' : [':vsplit'                                       , '新建垂直窗口并编辑当前文件'],
      \ '+' : [':vertical resize +5'                           , '增大窗口宽度'],
      \ '-' : [':vertical resize -5'                           , '减小窗口宽度'],
      \ '=' : ['<C-W>='                                        , '等分窗口'],
      \ 'r' : ['<C-W>r'                                        , '向右或向下循环移动窗口'],
      \ 'R' : ['<C-W>R'                                        , '向左或向上循环移动窗口'],
      \ 'x' : ['<C-W>x'                                        , '将当前窗口与下一个窗口对换'],
      \ 'T' : ['<C-W>T'                                        , '将当前窗口放到标签页'],
      \ 'f' : ['<C-W>f'                                        , '打开光标下的文件'],
      \ 'F' : ['<C-W>gf'                                       , '在 Tab 中打开当前光标下的文件'],
      \ 'o' : ['<C-W>o'                                        , '仅保留当前窗口'],
      \ 'c' : ['<C-W>c'                                        , '关闭当前窗口'],
      \ 'w' : ['<C-W>w'                                        , '切换到下一个 window, wrap around'],
      \ 'W' : ['<C-W>W'                                        , '切换到上一个 window, wrap around'],
      \ }
      " \ 'i' :,
      " \ 'name' : '+wiki',
      " \ 'w' : ['<Plug>(VimwikiIndex)',              '打开Index'],
      " \ 'i' : ['<Plug>(VimwikiDiaryIndex)',         '打开日记目录'],
      " \ 'n' : ['<plug>(wiki-open)',                 'wiki-open'],
      " \ 's' : ['<Plug>(VimwikiUISelect)',           'wikiuiselect'],
      " \ 'j' : ['<plug>(wiki-journal)',              'ncdu'],
      " \ 'R' : ['<plug>(wiki-reload)',               'ncdu'],
      " \ 'c' : ['<plug>(wiki-code-run)',             'ncdu'],
      " \ 'b' : ['<plug>(wiki-graph-find-backlinks)', 'ncdu'],
      " \ 'g' : ['<plug>(wiki-graph-in)',             'ncdu'],
      " \ 'G' : ['<plug>(wiki-graph-out)',            'ncdu'],
      " \ 'l' : ['<plug>(wiki-link-toggle)',          'ncdu'],
      " \ 'd' : ['<plug>(wiki-page-delete)',          'ncdu'],
      " \ 'r' : ['<plug>(wiki-page-rename)',          'ncdu'],
      " \ 't' : ['<plug>(wiki-page-toc)',             '生成Toc目录'],
      " \ 'T' : ['<plug>(wiki-page-toc-local)',       'ncdu'],
      " \ 'e' : ['<plug>(wiki-export)',               'ncdu'],
      " \ 'u' : ['<plug>(wiki-list-uniq)',            'ncdu'],
      " \ 'U' : ['<plug>(wiki-list-uniq-local)',      'ncdu'],

let g:which_key_map['x'] = {
      \ 'name' : '+text'           ,
      \ 'a' : ['<Plug>(EasyAlign)' , 'easy-align']                 ,
      \ 'd' : ['StripWhitespace'   , 'delete-trailing-whitespace'] ,
      \ }

" Global
" <Plug>VimwikiIndex
" <Plug>VimwikiTabIndex
" <Plug>VimwikiUISelect
" <Plug>VimwikiDiaryIndex
" <Plug>VimwikiMakeDiaryNote
" <Plug>VimwikiTabMakeDiaryNote
" <Plug>VimwikiMakeYesterdayDiaryNote
" <Plug>VimwikiMakeTomorrowDiaryNote
"
" " Local
" <Plug>Vimwiki2HTML
" <Plug>Vimwiki2HTMLBrowse
" <Plug>VimwikiDiaryGenerateLinks
" <Plug>VimwikiFollowLink
" <Plug>VimwikiSplitLink
" <Plug>VimwikiVSplitLink
" <Plug>VimwikiTabnewLink
" <Plug>VimwikiGoBackLink
" <Plug>VimwikiNextLink
" <Plug>VimwikiPrevLink
" <Plug>VimwikiGoto
" <Plug>VimwikiDeleteLink
" <Plug>VimwikiRenameLink
" <Plug>VimwikiAddHeaderLevel

" Register which key map
call which_key#register('<Space>', "g:which_key_map")
