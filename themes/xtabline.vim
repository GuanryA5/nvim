let g:xtabline_settings = {}
" let g:xtabline_settings.theme = 'dracula'
let g:xtabline_settings.theme = 'codedark'
let g:xtabline_settings.enable_mappings = 0
" let g:xtabline_settings.buffer_filtering = 0

let g:xtabline_settings.tabline_modes = ['buffers', 'tabs' ]

let g:xtabline_settings.enable_persistance = 0


let g:xtabline_settings.buffers_paths = -1
let g:xtabline_settings.current_tab_paths = -2
let g:xtabline_settings.other_tabs_paths = 1


let g:xtabline_lazy = 1
let g:xtabline_settings.show_right_corner = 1
" let g:xtabline_settings.tab_number_in_buffers_mode = 1
let g:xtabline_settings.use_devicons = 1
let g:xtabline_settings.indicators = {
      \ 'pinned': '📌',
      \ 'modified': '✨',
      \}

let g:xtabline_settings.icons = {
      \'pin': '📌',
      \'star': '✨',
      \'book': '📖',
      \'lock': '🔒',
      \'hammer': '🔨',
      \'tick': '✔',
      \'cross': '✖',
      \'warning': '⚠',
      \'menu': '☰',
      \'apple': '🍎',
      \'linux': '🐧',
      \'windows': '⌘',
      \'git': '',
      \'palette': '🎨',
      \'lens': '🔍',
      \'flag': '🏁',
      \}

let g:xtabline_settings.todo = { 'file': '.TODO', 'prefix': 'below',
    \'command': 'sp', 'size': 20, 'syntax': 'markdown'}
