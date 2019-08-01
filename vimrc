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
Plug 'pearofducks/ansible-vim', { 'do': 'cd ./UltiSnips; ./generate.py' }

" Sensible defaults for vim
Plug 'tpope/vim-sensible'

" Sweet colorscheme
Plug 'sainnhe/vim-color-atlantis'

" End of plugins
call plug#end()



" ###################
" # Visual Settings #
" ###################

" Turn on line numbers
set number
" Highlight current line
set cursorline

" Line numbers relative to the current line
" set relativenumber

set termguicolors

" Set sweet colorscheme
colorscheme atlantis
" Match lightline to sweet colorscheme
let g:lightline = {'colorscheme' : 'atlantis'}

" lightline already shows the mode in status bar
set noshowmode


" #############################
" # Ansible and YAML settings #
" #############################

" settings from https://github.com/pearofducks/ansible-vim
" When this variable is set, indentation will completely reset (unindent to
" column 0) after two newlines in insert-mode. The normal behavior of YAML is
" to always keep the previous indentation, even across multiple newlines with
" no content.
let g:ansible_unindent_after_newline = 1

" Ansible modules commonly start with a name: key for self-documentation of
" playbooks. This option enables/changes highlight of this.
let g:ansible_name_highlight = 'b'

" Spacing
autocmd FileType yaml setlocal ai ts=2 sw=2 et

" ###########
" # Keymaps #
" ###########

" Open nerdtree
map <C-o> :NERDTreeToggle<CR>

" Keyboard mash 'jk' or 'kj' will send escape
inoremap jk <esc>
inoremap kj <esc>

" move to beginning/end of line
nnoremap B ^
nnoremap E $<Paste>
