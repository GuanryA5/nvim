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
let g:which_key_map['/']     = [ ':call Comment()'      , '注释选行'             ]
let g:which_key_map['h']     = [ 'Startify'             , '打开起始页'           ]
let g:which_key_map['d']     = [ ':bd'                  , '删除当前buffer'       ]
let g:which_key_map['e']     = [ ':CocCommand explorer' , '打开资源管理器'       ]
let g:which_key_map['r']     = [ ':RnvimrToggle'        , '打开ranger文件浏览器' ]
let g:which_key_map['S']     = [ ':SSave'               , '保存当前会话'         ]
let g:which_key_map['z']     = [ 'Goyo'                 , 'zen模式'              ]
let g:which_key_map['W']     = [ 'w'                    , '保存'                 ]
let g:which_key_map['<Tab>'] = [ ':e#'                  , '打开最后编辑的文件'   ]
let g:which_key_map['q']     = [ 'quit'                 , '退出'                 ]
let g:which_key_map['Q']     = [ ':qa!'                 , '强制退出'             ]
let g:which_key_map[' ']     = [ '<Esc>'                , 'Scroll Down'          ]
let g:which_key_map['f']     = [ 'FZF'                  , 'FZF'                  ]
let g:which_key_map['m']     = [ ':CocList marketplace' , 'Coc插件下载'          ]

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

" a is for actions
let g:which_key_map.a = {
      \ 'name': '+actions/align' ,
      \ 'a' : [ ':CocCommand actions.open' ,        '动作'            ],
      \ ',' : [ ':EasyAlign*,'             ,        '对齐所有(,)'     ],
      \ '=' : [ ':EasyAlign*='             ,        '对齐所有(=)'     ],
      \ 's' : [ ':<EasyAlign*\'            ,        '对齐所有(<SPC>)' ],
      \ 'F' : [ ':Prettier'                ,        '格式化当前文件(Prettier)' ],
      \ }

" b is for buffer
let g:which_key_map['b'] = {
  \ 'name' : '+buffer/bookmarks',
  \ '1' : [ 'b1'        , 'buffer 1'        ],
  \ '2' : [ 'b2'        , 'buffer 2'        ],
  \ 'd' : [ ':bd'       , 'delete-buffer'   ],
  \ 'f' : [ 'bfirst'    , 'first-buffer'    ],
  \ 'l' : [ 'blast'     , 'last-buffer'     ],
  \ 'n' : [ 'bnext'     , 'next-buffer'     ],
  \ 'p' : [ 'bprevious' , 'previous-buffer' ],
  \ 'h' : [ 'Startify'  , 'home-buffer'     ],
  \ '?' : [ 'Buffers'   , 'fzf-buffer'      ],
  \ 'k' : { 
    \ 'name' : 'bookmark' , 
    \ 't' : [              ':CocCommand bookmark.toggle' ,        '创建/删除bookmark' ],
    \ 'a' : [             ':CocCommand bookmark.anntate' ,     '创建带有注释bookamrk' ],
    \ 'x' : [ ':CocCommand bookmark.clearForCurrentFile' , '删除当前文件所有bookmark' ],
    \ 'X' : [       ':CocCommand bookmark.clearAllFiles' ,     '删除所有文件bookmark' ],
    \ 'p' : [                ':CocCommand bookmark.prev' ,       '跳到下一个bookmark' ],
    \ 'n' : [                ':CocCommand bookmark.next' ,       '跳到上一个bookmark' ],
    \}
  \}

let g:which_key_map['c'] = {
      \ 'name' : '+Code/Goto',
      \ 'e' : [ '<S-Q>',                '切换ex模式' ],
      \ 'c' : [ ':Codi',                '开启实时代码预览(Codi)' ],
      \ 'C' : [ ':Codi!',               '关闭实时代码预览(Codi)' ],
      \ 'h' : [ ':let @/ = ""',         '关闭搜索代码高亮' ],
      \ 'v' : [ ':Vista!!'             , '开/关 Tag Viewer' ],
      \ 's' : [ ':CocList snippets'      , '代码snippets' ],
      \}

" s is for search
let g:which_key_map.s = {
      \ 'name' : '+search' ,
      \ '/' : [':History/'              , '查找历史匹配'],
      \ ';' : [':Commands'              , '查找命令'],
      \ 'a' : [':Ag'                    , 'Ag'],
      \ 'b' : [':BLines'                , '锁定Buffer内容'],
      \ 'B' : [':Buffers'               , '显示Buffer列表'],
      \ 'c' : [':CocList commands'      , '查找Coc命令'],
      \ 'f' : [':Files'                 , '查找路径下文件'],
      \ 'h' : [':History'               , '查找历史编辑文件'],
      \ 'H' : [':History:'              , '查找历史命令'],
      \ 'l' : [':Lines'                 , '查找路径下匹配内容文件'] ,
      \ 'm' : [':Marks'                 , 'marks'] ,
      \ 'M' : [':Maps'                  , 'normal maps'] ,
      \ 'P' : [':Tags'                  , 'project tags'],
      \ 'r' : [':Rg'                    , '搜索匹配内容的所有文件'],
      \ 't' : [':BTags'                 , '搜索缓冲区所有Tags'],
      \ 'w' : [':Windows'               , '搜索所有windows'],
      \ 'y' : [':Filetypes'             , '变更当前Filetypes'],
      \ 'z' : [':FZF'                   , 'FZF'],
      \ }

let g:which_key_map.h = {
    \ 'name' : '+help' ,
    \ 'p' : [':Helptags'              , 'help tags'] ,
    \ 'm' : [':', '查看help'] ,
  \}

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
      \ 'z' : [':CocDisable'                         , 'disable CoC'],
      \ 'Z' : [':CocEnable'                          , 'enable CoC'],
      \ }

" t is for terminal
let g:which_key_map.t = {
      \ 'name' : '+toggle' ,
      \ 'r' : [ ':set relativenumber!'                                              , '开启相对行号'       ],
      \ 'c' : [ ':call(Switvchthemes)'                                              , '切换主题'           ],
      \ 's' : [ ':FloatermSend'                                                     , '发送内容到Terminal' ],
      \ 'k' : [ ':FloatermKill'                                                     , '杀死Terminal进程'   ],
      \ 'h' : [ ':FloatermHide'                                                     , '隐藏当前Terminal'   ],
      \ 'p' : [ ':FloatermPrev'                                                     , '切换到上个Terminal' ],
      \ 'n' : [ ':FloatermNext'                                                     , '切换到下个Terminal' ],
      \ 'T' : [ ':FloatermNew'                                                      , '悬浮打开Terminal'   ],
      \ 't' : [ ':FloatermNew --wintype=popup --height=6'                           , '水平打开Terminal'   ],
      \ 'E' : [ ':CocCommand explorer --preset floatingRightside'                   , '悬浮打开explorer'   ],
      \ 'P' : [ ':FloatermNew --wintype=normal --position=right --width=0.5 python' , '悬浮打开python'     ],
      \ }

let g:which_key_map.T = {
      \ 'name' : '+Tab',
      \ 'N' : [ ':tabnew'   , '新建标签'           ],
      \ 'c' : [ ':tabc'     , '关闭标签'           ],
      \ 'o' : [ ':tabo'     , '关闭其他所有标签'   ],
      \ 'f' : [ ':tabfrist' , '切换到第一个标签'   ],
      \ 'l' : [ ':tablast'  , '切换到最后一个标签' ],
      \ 'p' : [ 'tabp'      , '切换到上一个标签'   ],
      \ 'n' : [ 'tabn'      , '切换到下一个标签'   ],
      \ }


" w is for windows
" let g:which_key_map.w = {
"       \ 'name' : '+windows/wiki',
"       \ 'N' : [':enew'                                         , '新建窗口并编辑文件'],
"       \ 'S' : [':new'                                          , '新建水平窗口并编辑新文件'],
"       \ 'V' : [':vnew'                                         , '新建垂直窗口并编辑新文件'],
"       \ 's' : [':split'                                        , '新建水平窗口并编辑当前文件'],
"       \ 'v' : [':vsplit'                                       , '新建垂直窗口并编辑当前文件'],
"       \ '+' : [':vertical resize +5'                           , '增大窗口宽度'],
"       \ '-' : [':vertical resize -5'                           , '减小窗口宽度'],
"       \ '=' : ['<C-W>='                                        , '等分窗口'],
"       \ 'r' : ['<C-W>r'                                        , '向右或向下循环移动窗口'],
"       \ 'R' : ['<C-W>R'                                        , '向左或向上循环移动窗口'],
"       \ 'x' : ['<C-W>x'                                        , '将当前窗口与下一个窗口对换'],
"       \ 'T' : ['<C-W>T'                                        , '将当前窗口放到标签页'],
"       \ 'f' : ['<C-W>f'                                        , '打开光标下的文件'],
"       \ 'F' : ['<C-W>gf'                                       , '在 Tab 中打开当前光标下的文件'],
"       \ 'o' : ['<C-W>o'                                        , '删除所有窗口仅保留当前窗口'],
"       \ 'd' : ['<C-W>c'                                        , '关闭当前窗口'],
"       \ 'w' : ['<C-W>w'                                        , '切换到下一个 window, wrap around'],
"       \ 'W' : ['<C-W>W'                                        , '切换到上一个 window, wrap around'],
"       \ '?' : ['Windows'                                       , 'fzf-windows'],
"       \}

let g:which_key_map['w'] = {
      \ 'name' : '+windows' ,
      \ 'w' : ['<C-W>w'     , 'other-window']          ,
      \ 'd' : ['<C-W>c'     , 'delete-window']         ,
      \ '-' : ['<C-W>s'     , 'split-window-below']    ,
      \ '|' : ['<C-W>v'     , 'split-window-right']    ,
      \ '2' : ['<C-W>v'     , 'layout-double-columns'] ,
      \ 'h' : ['<C-W>h'     , 'window-left']           ,
      \ 'j' : ['<C-W>j'     , 'window-below']          ,
      \ 'l' : ['<C-W>l'     , 'window-right']          ,
      \ 'k' : ['<C-W>k'     , 'window-up']             ,
      \ 'H' : ['<C-W>5<'    , 'expand-window-left']    ,
      \ 'J' : [':resize +5'  , 'expand-window-below']   ,
      \ 'L' : ['<C-W>5>'    , 'expand-window-right']   ,
      \ 'K' : [':resize -5'  , 'expand-window-up']      ,
      \ '=' : ['<C-W>='     , 'balance-window']        ,
      \ 's' : ['<C-W>s'     , 'split-window-below']    ,
      \ 'v' : ['<C-W>v'     , 'split-window-below']    ,
      \ '?' : ['Windows'    , 'fzf-window']            ,
      \ }

let g:which_key_map['k'] = {
      \ 'name' : '+wiki' ,
      \ 'w' : ['<Plug>(VimwikiIndex)',              '打开Index'],
      \ 'i' : ['<Plug>(VimwikiDiaryIndex)',         '打开日记目录'],
      \ 'n' : ['<plug>(wiki-open)',                 'wiki-open'],
      \ 's' : ['<Plug>(VimwikiUISelect)',           'wikiuiselect'],
      \ 'j' : ['<plug>(wiki-journal)',              'ncdu'],
      \ 'R' : ['<plug>(wiki-reload)',               'ncdu'],
      \ 'c' : ['<plug>(wiki-code-run)',             'ncdu'],
      \ 'b' : ['<plug>(wiki-graph-find-backlinks)', 'ncdu'],
      \ 'g' : ['<plug>(wiki-graph-in)',             'ncdu'],
      \ 'G' : ['<plug>(wiki-graph-out)',            'ncdu'],
      \ 'l' : ['<plug>(wiki-link-toggle)',          'ncdu'],
      \ 'd' : ['<plug>(wiki-page-delete)',          'ncdu'],
      \ 'r' : ['<plug>(wiki-page-rename)',          'ncdu'],
      \ 't' : ['<plug>(wiki-page-toc)',             '生成Toc目录'],
      \ 'T' : ['<plug>(wiki-page-toc-local)',       'ncdu'],
      \ 'e' : ['<plug>(wiki-export)',               'ncdu'],
      \ 'u' : ['<plug>(wiki-list-uniq)',            'ncdu'],
      \ 'U' : ['<plug>(wiki-list-uniq-local)',      'ncdu'],
      \}

let g:which_key_map['x'] = {
      \ 'name' : '+text'           ,
      \ 'a' : ['<Plug>(EasyAlign)' , 'easy-align']                 ,
      \ 'd' : ['StripWhitespace'   , 'delete-trailing-whitespace'] ,
      \ }


" Register which key map
call which_key#register('<Space>', "g:which_key_map")
