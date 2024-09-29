call plug#begin('~/.vim/plugged')

" YouCompleteMe
Plug 'ycm-core/YouCompleteMe'
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

" Coc.nvim for autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" vim-airline for status line
Plug 'vim-airline/vim-airline'

" lightline.vim for lightweight status line
Plug 'itchyny/lightline.vim'

call plug#end()

" Enable airline
let g:airline_powerline_fonts = 1

set termguicolors

highlight Normal guibg=NONE guifg=white
highlight Pmenu guibg=black guifg=white
highlight PmenuSel guibg=black guifg=white
highlight CocMenu guibg=black guifg=white
highlight CocMenuSel guibg=black guifg=white


inoremap <silent> <expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>"

colorscheme gruvbox  " or any other colorscheme you prefer

set number          " Shows line numbers



syntax on

set tabstop=4       " Number of spaces tabs count for
set shiftwidth=4    " Size of an indent
set expandtab       " Converts tabs to spaces

let g:airline_theme='dark'

let g:lightline = {}
let g:lightline.colorscheme = 'wombat' " or another supported theme

set completeopt=menuone,noinsert,noselect

set hlsearch         " Highlight search results

nnoremap <silent> <Esc> :nohlsearch<Bar>exit<CR>

Plug 'morhetz/gruvbox'

colorscheme gruvbox

" Enable syntax-based folding
set foldmethod=syntax
" Start with all folds closed (optional)
set foldlevelstart=99

set nocompatible              " Required
filetype off                  " Required

set nocompatible              " Required
filetype off                  " Required

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Other plugins go here, for example:
Plugin 'dense-analysis/ale'

call vundle#end()            " Required
filetype plugin indent on    " Required

" Enable ALE for linting
let g:ale_linters = {
\   'c': ['gcc', 'clang', 'cppcheck'],
\   'cpp': ['gcc', 'clang', 'cppcheck'],
\}

" Set ALE to lint on save and when typing
let g:ale_lint_on_text_changed = 'always'
let g:ale_lint_on_save = 1

" Specify gcc, clang, and cppcheck executable paths if necessary (optional)
let g:ale_c_gcc_executable = 'gcc'
let g:ale_c_clang_executable = 'clang'
let g:ale_c_cppcheck_executable = 'cppcheck'
let g:ale_cpp_gcc_executable = 'g++'
let g:ale_cpp_clang_executable = 'clang++'
let g:ale_cpp_cppcheck_executable = 'cppcheck'

" Customize the linter options if needed
let g:ale_c_gcc_options = '-Wall'
let g:ale_c_clang_options = '-Wall'
let g:ale_cpp_gcc_options = '-Wall'
let g:ale_cpp_clang_options = '-Wall'
