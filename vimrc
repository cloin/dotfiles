" ###########
" # Plugins #
" ###########

" Initialize plugins with vim-plug
call plug#begin()

" Open tree to navigate files in current dir
Plug 'scrooloose/nerdtree'

" Vim custom status bar with nice default configuration
Plug 'itchyny/lightline.vim'

" Tmux status bar that uses theme set in lightline.vim
Plug 'edkolev/tmuxline.vim'

" Ansible syntax highlighting
Plug 'pearofducks/ansible-vim', { 'do': 'cd ./UltiSnips; ./generate.py' }

" Sensible defaults for vim
Plug 'tpope/vim-sensible'

" Sweet colorscheme
" Plug 'sainnhe/vim-color-atlantis'

" Easymotion https://github.com/easymotion/vim-easymotion/tree/85e90c9759e14633d878ed534ef313876ab96555
Plug 'easymotion/vim-easymotion'

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

" set termguicolors

" Set sweet colorscheme
" colorscheme atlantis
" Match lightline to sweet colorscheme
let g:lightline = {'colorscheme' : 'nord'}

" lightline already shows the mode in status bar
set noshowmode

" nerdtree now defaults to <leader><leader>, revert to old
map <Leader> <Plug>(easymotion-prefix)



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
nnoremap E $


" ##############
" # easymotion #
" ##############

" easymotion minimal https://github.com/easymotion/vim-easymotion
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key
" binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-overwin-f2)

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
