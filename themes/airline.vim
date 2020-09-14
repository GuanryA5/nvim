" let g:airline_theme='onedark'

" 开启tabline标签页
let g:airline#extensions#tabline#enabled = 1
let g:webdevicons_enable_airline_tabline = 1
let g:airline#extensions#tabline#show_tab_type = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#fnamecollapse = 1
" let g:airline#extensions#tabline#show_close_button = 0

let g:airline#extensions#tabline#formatter = 'unique_tail'

let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'


let g:airline_extensions = ['branch', 'hunks', 'coc', 'undotree']

let g:airline#extensions#tabline#buffers_label = ''
let g:airline#extensions#tabline#tabs_label = ''
let g:airline#extensions#coc#enabled = 1

" Just show the file name
let g:airline#extensions#tabline#fnamemod = ':t'

" enable powerline fonts
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

let g:airline#extensions#default#layout = [['a', 'b', 'c', 'd'], ['x', 'z', 'warning', 'error']]
" let g:airline_skip_empty_sections = 1

" let g:airline_section_c = airline#section#create([''])
" let g:airline_section_z = airline#section#create(['linenr'])

" Sections
" let g:airline_section_c = ''
let g:airline_section_a = "GRay"
" let g:airline_section_b = '%{getcwd()}'
let g:airline_section_c = '%{strftime("%m/%d/%y - %H:%M")}' 
" let g:airline_section_d = '%{getcwd()}/%t'
