" ###########
" # Plugins #
" ###########

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

" Sweet colorscheme
Plug 'danilo-augusto/vim-afterglow'


" End of plugins
call plug#end()



" ###################
" # Visual Settings #
" ###################

set nu
set relativenumber
set termguicolors
colorscheme atlantis
let g:lightline = {'colorscheme' : 'atlantis'}

" lightline already shows the mode in status bar
set noshowmode



" ###########
" # Keymaps #
" ###########

" Open nerdtree
map <C-o> :NERDTreeToggle<CR>

" Keyboard mash 'jk' or 'kj' will send escape
inoremap jk <esc>
inoremap kj <esc>
