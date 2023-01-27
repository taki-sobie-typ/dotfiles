" .Vimrc file 
" KOK vim kok keybindings and fixes
set updatetime=300
set signcolumn=yes


"suggest.noselect: true
" COC tab S-tab compleation

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Use <c-space> to trigger completion
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif


 
let g:jedi#show_call_signatures = 2
set clipboard=unnamedplus

" 4 Spacje Tab
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
"set expandtab

" Basics Config
syntax on
set number relativenumber
set nu
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set smartindent
set hidden

" Key mapping
map <C-o> :setlocal spell! spelllang=pl_pl<CR>
map <C-n> :NERDTreeToggle<CR>
" REMAPS
inoremap jj <Esc>

" Plugins/Extensions
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
"Plug 'mbbill/undotree'
Plug 'preservim/nerdtree'
"Plug 'mattn/emmet-vim'
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'vim-python/python-syntax'
Plug 'davidhalter/jedi-vim'
Plug 'ap/vim-buftabline'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'NLKNguyen/papercolor-theme'
"Plug 'mkitt/tabline.vim'
call plug#end()

" Python
let g:python_highlight_all = 1


" Vim-Airline
"set showtabline=2
set noshowmode
" Nerd Tree
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
"let g:NERDTreeDirArrowExpandable = '>'
"let g:NERDTreeDirArrowCollapsible= 'x'
" Colors
set notermguicolors           
colorscheme gruvbox
set background=dark
set laststatus=2
if !has('gui_running')
	set t_Co=256
endif
" define lightline configuration
let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox'



" Disable signature help
 let g:ycm_disable_signature_help = 1
"Transparency
"transparent bg
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE
"For Vim<8, replace EndOfBuffer by NonText
autocmd vimenter * hi EndOfBuffer guibg=NONE ctermbg=NONE

