let mapleader = ' '

" Number 
set number
set numberwidth=4
set relativenumber " show line
set noshowmode

" Remove highlight
map <C-h> :nohl<CR>
nnoremap <space> ggVG

" Plug set up
" ----------------------------------------------------
call plug#begin(expand('~/.config/nvim/plugged'))

" File
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'

" Theme
Plug 'morhetz/gruvbox'
" autocomple code
"Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Vim Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" auto complete html js ..
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'

" terminal
Plug 'voldikss/vim-floaterm'
" animation
Plug 'neovide/neovide'

call plug#end()
" ----------------------------------------------------

" Theme and font settings
set guifont=Consolas\ NF:h18
"Grubox theme
set background=dark
let g:gruvbox_contrast_dark='soft'
colorscheme gruvbox
" Set transparent bg
hi Normal guibg=NONE ctermbg=NONE

" ----------------------------------------------------


" block direction 
nnoremap <Up> <Left>
nnoremap <Down> <Right>

"Fast open init.vim
map <space>bn :vsp AppData\Local\Nvim\init.vim<CR>
map <space>bm :source AppData\Local\Nvim\init.vim<CR>

" write and quich mapping
nnoremap <space>w :w!<CR>

" Vim Airline
let g:airline_theme='gruvbox'

"" NERDTree configuration

" Map NerdTree
nnoremap <silent> <F2> :NERDTreeFind<CR>
nnoremap <silent> <space>3 :<C-e>NERDTreeToggle<CR>
let NERDTreeShowHidden=1


" Terminal Plug: vim-loaterm 
" ------------------------------------------------------
" Configuration example
" Configuration example
let g:floaterm_keymap_new    = '<F6>'
let g:floaterm_keymap_prev   = '<F7>'
let g:floaterm_keymap_next   = '<F8>'
let g:floaterm_keymap_toggle = '<space>9'
let g:floaterm_keymap_kill = '<space>0' 
let g:floaterm_width = 0.8
let g:floterm_height = 0.8

" Set floaterm window's background to black
hi Floaterm guibg=black
" Set floating window border line color to cyan, and background to orange
hi FloatermBorder guibg=orange guifg=cyana
"---------------------------------------------------------
" compile and run cpp program 
autocmd filetype cpp nnoremap <space>4 :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
" animation cursor and scrool
let g:neovide_cursor_animation_length=0.13
let g:neovide_cursor_vfx_mode = "sonicboom"
let g:neovide_transparency=0.8

" Let clangd fully control code completion
"let g:ycm_clangd_uses_ycmd_caching = 0
" Use installed clangd, not YCM-bundled clangd which doesn't get updates.
"let g:ycm_clangd_binary_path = exepath("clangd")
vmap <silent> <C-c> "*y
nnoremap <silent> <C-v> "*p

