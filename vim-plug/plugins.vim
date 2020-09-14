" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

  " vim 中文手册
  Plug 'yianwillis/vimcdoc'
  " 注释
  Plug 'tpope/vim-commentary'
  " 进制转换-十进制、十六进制、八进制和二进制
  Plug 'glts/vim-radical'
  " Repeat stuff
  Plug 'tpope/vim-repeat'
  " highlight all match under cursor
  Plug 'RRethy/vim-illuminate'
  Plug 'suy/vim-context-commentstring'
  " Change dates fast
  Plug 'tpope/vim-speeddating'
  " Files
  Plug 'tpope/vim-eunuch'
  " Surround
  Plug 'tpope/vim-surround'
  " Better Comments
  " Plug 'preservim/nerdcommenter'
  " Have the file system follow you around
  if exists('g:vscode')
    Plug 'easymotion/vim-easymotion'
  else 


    " jsx syntax support
    Plug 'maxmellon/vim-jsx-pretty'
    " buffer
    Plug 'moll/vim-bbye'
    Plug 'airblade/vim-rooter'
    " 自动适应缩进
    Plug 'tpope/vim-sleuth'
    " Text Navigation
    Plug 'justinmk/vim-sneak'
    Plug 'unblevable/quick-scope'
    " Add some color
    Plug 'norcalli/nvim-colorizer.lua'
    " Plug 'junegunn/rainbow_parentheses.vim'

    Plug 'luochen1990/rainbow'
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " Cool Icons
    Plug 'ryanoasis/vim-devicons'
    " Auto pairs for '(' '[' '{' 
    Plug 'jiangmiao/auto-pairs'
    " Closetags
    Plug 'alvan/vim-closetag'
    " Themes
    Plug 'christianchiarulli/nvcode.vim'
    Plug 'joshdick/onedark.vim'
    " Plug 'kaicataldo/material.vim'
    " Plug 'NLKNguyen/papercolor-theme'
    " Plug 'tomasiser/vim-code-dark'
    " Plug 'andreypopp/vim-colors-plain'
    " Plug 'liuchengxu/space-vim-theme'
    " Plug 'junegunn/seoul256.vim'
    " Plug 'cocopon/iceberg.vim'
    " Plug 'rakr/vim-one'
    " Plug 'KabbAmine/yowish.vim'
    Plug 'dracula/vim', { 'as': 'dracula' }
    " Intellisense
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Status Line
    Plug 'vim-airline/vim-airline'
    Plug 'ryanoasis/vim-devicons'
    " Ranger
    " Plug 'rbgrouleff/bclose.vim'
    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    " Git
    " Plug 'mhinz/vim-signify'
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'
    " Terminal
    Plug 'voldikss/vim-floaterm'
    " Start Screen
    Plug 'mhinz/vim-startify'
    " Vista
    Plug 'liuchengxu/vista.vim'
    " See what keys do like in emacs
    Plug 'liuchengxu/vim-which-key'
    " Zen mode
    Plug 'junegunn/goyo.vim'
    " Making stuff
    Plug 'neomake/neomake'
    " Snippets
    Plug 'honza/vim-snippets'
    Plug 'mattn/emmet-vim'
    " 实时代码
    Plug 'metakirby5/codi.vim'
    " 写作工具
    "  Plug 'https://github.com/vimwiki/vimwiki.git'
    " Plug 'mattn/calendar-vim'
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
    " DEBUG工具
    Plug 'puremourning/vimspector'
    Plug 'itspriddle/vim-shellcheck'
    " Align
    Plug 'junegunn/vim-easy-align'
    Plug 'godlygeek/tabular'
    " tab mangers
    Plug 'mg979/vim-xtabline'
    " better whitepace
    Plug 'ntpeters/vim-better-whitespace'
    " visual multi select
    Plug 'terryma/vim-multiple-cursors'
    " 让浏览更顺滑，类似mac smoth
    Plug 'psliwka/vim-smoothie'
    " 缩进显示
    Plug 'Yggdroot/indentLine'
    " 列出文件最近的操作历史
    Plug 'mbbill/undotree'
    " lanuage 
    Plug 'dense-analysis/ale'
    Plug 'jmcantrell/vim-virtualenv'
    Plug 'zenbro/mirror.vim'
    Plug 'rizzatti/dash.vim'


    " Plug 'hardcoreplayers/dashboard-nvim'
    " Plug 'vim-airline/vim-airline-themes'
    " Plug 'hardcoreplayers/spaceline.vim'

  endif

  call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

