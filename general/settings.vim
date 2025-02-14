" theme
set background=dark
" colorscheme iceberg

set iskeyword+=-                      	" treat dash separated words as a word text object"
set formatoptions-=cro                  " Stop newline continution of comments


syntax enable                           " 开启语法高亮
set nocompatible                        " 不兼容vi操作
set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " 显示不自动换行
set encoding=utf-8                      " The encoding displayed 
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			            " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set mouse=a                             " 支持鼠标操作
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " 支持256色模式
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " 将tab符转为空格
set smartindent                         " 智能缩进
set autoindent                          " 自动缩进
set laststatus=2                        " 总是显示状态栏
set nu                                  " 显示行号 
set cursorline                          " Enable highlighting of the current line
set showtabline=2                       " Always show tabs 
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set laststatus=2
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set shortmess+=c                        " Don't pass messages to |ins-completion-menu|.
set signcolumn=yes                      " Always show the signcolumn, otherwise it would shift the text each time
set updatetime=300                      " Faster completion
set timeoutlen=100                      " By default timeoutlen is 1000 ms
set pastetoggle=<F2>
set guifont=CodeNewRoman\ Nerd\ Font:h20
set incsearch
set scrolloff=3                         " 顶部底部保持3行距离
set clipboard=unnamed
if has("unnamedplus") 
    set clipboard+=unnamedplus
endif

cmap w!! w !sudo tee %
let g:python3_host_prog='/usr/local/opt/python@3.8/bin/python3'
let g:python2_host_prog='/System/Library/Frameworks/Python.framework/Versions/2.7/bin/python2.7'
let g:perl_host_prog = '/usr/local/bin/perl'
