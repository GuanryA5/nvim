" Genral configuration
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/functions.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/keys/whichkey.vim


if exists('g:vscode')
  "VS code extension
  source $HOME/.config/nvim/vscode/settings.vim
  source $HOME/.config/nvim/plug-config/easymotion.vim
else

  " Themes
  source $HOME/.config/nvim/themes/syntax.vim
  source $HOME/.config/nvim/themes/airline.vim
  source $HOME/.config/nvim/themes/xtabline.vim
  " source $HOME/.config/nvim/themes/nvcode.vim
  source $HOME/.config/nvim/themes/indetline.vim
  " source $HOME/.config/nvim/themes/spaceline.vim
  " source $HOME/.config/nvim/themes/iceberg.vim
  " source $HOME/.config/nvim/themes/janah.vim
  " source $HOME/.config/nvim/themes/jellybeans.vim
  source $HOME/.config/nvim/themes/onedark.vim 
  " source $HOME/.config/nvim/themes/vim-colors-plain.vim
  " source $HOME/.config/nvim/themes/mono_sw.vim

  " Plugin configuration
  source $HOME/.config/nvim/plug-config/rnvimr.vim
  source $HOME/.config/nvim/plug-config/fzf.vim
  source $HOME/.config/nvim/plug-config/vim-commentary.vim
  source $HOME/.config/nvim/plug-config/rainbow.vim
  source $HOME/.config/nvim/plug-config/codi.vim
  source $HOME/.config/nvim/plug-config/quickscope.vim
  source $HOME/.config/nvim/plug-config/vim-wiki.vim
  source $HOME/.config/nvim/plug-config/sneak.vim
  source $HOME/.config/nvim/plug-config/coc.vim
  source $HOME/.config/nvim/plug-config/goyo.vim
  source $HOME/.config/nvim/plug-config/vim-rooter.vim
  source $HOME/.config/nvim/plug-config/start-screen.vim
  source $HOME/.config/nvim/plug-config/gitgutter.vim
  source $HOME/.config/nvim/plug-config/closetags.vim
  source $HOME/.config/nvim/plug-config/floaterm.vim
  source $HOME/.config/nvim/plug-config/vista.vim
  source $HOME/.config/nvim/plug-config/better-whitespace.vim
  source $HOME/.config/nvim/plug-config/bclose.vim
  source $HOME/.config/nvim/plug-config/polyglot.vim
  source $HOME/.config/nvim/plug-config/illuminate.vim
  source $HOME/.config/nvim/plug-config/easymotion.vim
  source $HOME/.config/nvim/plug-config/undotree.vim
  source $HOME/.config/nvim/plug-config/ale.vim
  source $HOME/.config/nvim/plug-config/shellcheck.vim
  source $HOME/.config/nvim/plug-config/language-server.vim
  " source $HOME/.config/nvim/plug-config/vim-visual-multi.vim
  " luafile $HOME/.config/nvim/lua/plug-colorizer.lua
endif
