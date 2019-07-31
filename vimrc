" Initialize plugins with vim-plug
call plug#begin()

" Open tree to navigate files in current dir
Plug 'scrooloose/nerdtree'

" Vim custom status bar with nice default configuration
Plug 'itchyny/lightline.vim'

" Ansible syntax highlighting
Plug 'pearofducks/ansible-vim'

" Sensible defaults for vim
Plug 'tpope/vim-sensible'

" End of plugins
call plug#end()

" Sweet colorscheme
Plug 'danilo-augusto/vim-afterglow'


"
" Visual options
"

set nu
colorscheme afterglow
let g:afterglow_inherit_background=1
let g:afterglow_italic_comments=1
let g:airline_theme='afterglow'

"
" Keymaps
"

" Open nerdtree
map <C-o> :NERDTreeToggle<CR>

" Keyboard mash 'jk' or 'kj' will send escape
inoremap jk <esc>
inoremap kj <esc>
