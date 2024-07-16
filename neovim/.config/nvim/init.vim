let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source ~/.config/nvim/init.vim
endif

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Pale Night colorscheme
"Plug 'drewtempelmeyer/palenight.vim'

" Surround stuff
"Plug 'tpope/vim-surround'

"Plug 'Rip-Rip/clang_complete'
" Forward sneak find
"Plug 'justinmk/vim-sneak'

"Plug 'ericcurtin/CurtineIncSw.vim'

"Plug 'kien/ctrlp.vim'

"Plug 'tpope/vim-repeat'

"Plug 'tpope/vim-commentary'

"Plug 'machakann/vim-swap'

"Plug 'gaving/vim-textobj-argument'
Plug 'chrisgrieser/nvim-various-textobjs'

Plug 'folke/tokyonight.nvim'

"Plug 'eoh-bse/minintro.nvim'
"Plug 'ntpeters/vim-better-whitespace'

"Plug 'jeetsukumaran/vim-filebeagle'

"Plug 'nanotech/jellybeans.vim'

"Plug 'peterhoeg/vim-qml'

" Initialize plugin system
call plug#end()

" Switch between header and source
map <F4> :call CurtineIncSw()<CR>
nmap ; :

if exists('g:vscode')

else 

" Yanking to global clipboard
set clipboard=unnamedplus

" Tabs are 2 spaces
set tabstop=2
set softtabstop=0
set expandtab
set shiftwidth=2
set smarttab
set autoindent
"set colorcolumn=80

" Insert mode mappings
imap jj <Esc>

set nu
nnoremap zz :update<cr>
inoremap zz <Esc>:update<cr>gi

"set completeopt-=preview
"set completeopt+=menuone,noselect
" The following line assumes `brew install llvm` in macOS
"let g:clang_library_path = '/usr/lib/libclang.so'
"let g:clang_user_options = '-std=c++14'
"let g:clang_complete_auto = 0
"let g:mucomplete#enable_auto_at_startup = 1

"let g:mucomplete#can_complete = {}
"let g:mucomplete#can_complete.default = {
"    \  'thes': {
"    \     t -> g:mucomplete_with_key && strlen(&l:thesaurus) > 0
"    \   }
"    \ }
"" Add "thes" to your completion chains, e.g.:
"let g:mucomplete#chains = { 'default': ['keyn', 'thes'] }

colorscheme peachpuff

autocmd! BufNewFile,BufRead *.pde setlocal ft=arduino
autocmd! BufNewFile,BufRead *.ino setlocal ft=arduino

let mapleader=" "

colorscheme tokyonight-moon

noremap ,c :cd ~/code<cr>

endif