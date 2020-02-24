set runtimepath+='~/.config/nvim/init.vim'
set runtimepath+=~/.config/nvim/bundle/deoplete.nvim/

:set guicursor=
:set number
:set relativenumber
:colo desert
syntax enable
highlight ColorColumn ctermbg=LightGrey
set colorcolumn=80
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" === vim-plug===
call plug#begin()
Plug 'w0rp/ale'
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'Shougo/deoplete.nvim'
Plug 'scrooloose/nerdtree'
Plug 'tmhedberg/SimpylFold'
Plug 'gagoar/StripWhiteSpaces'
Plug 'vim-syntastic/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'jmcantrell/vim-virtualenv'
"Plug 'roxma/nvim-completion-manager'
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
call plug#end()
" call plug#begin('/home/yunli/.local/share/nvim/site/plugged/')
"   Plug '~/.nvim_plugs/deoplete.nvim'
"   Plug '~/.nvim_plugs/deoplete-jedi'
"   Plug '~/.nvim_plugs/vim-gitgutter'
" "  Plug '~/.nvim_plugs/powerline'
"   Plug '~/.nvim_plugs/vim-airline'
"   Plug '~/.nvim_plugs/vim-virtualenv'
"   Plug '~/.nvim_plugs/SimpylFold'
"   Plug '~/.nvim_plugs/syntastic'
" call plug#end()

" ### simpylFold ###
let g:SimpylFold_docstring_preview = 1
let g:SimpylFold_fold_import = 0
let g:SimpylFold_docstring = 0

" ### syntastic ###
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" ### vim-gitgutter ###
let g:GitGutterEnable = 1
let g:gitgutter_grep=''

" ### nerdTree ###
autocmd VimEnter * NERDTree | wincmd p

" ### syntastic ###
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" ### deoplete ###
" deoplete.vim contains vim settings relevant to the deoplete autocompletion plugin
" for more details about my neovim setup see:
" http://afnan.io/2018-04-12/my-neovim-development-setup/

" deoplete options
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1

" disable autocomplete by default
" let b:deoplete_disable_auto_complete=1
" let g:deoplete_disable_auto_complete=1
" call deoplete#custom#buffer_option('auto_complete', v:false)
"
" if !exists('g:deoplete#omni#input_patterns')
"     let g:deoplete#omni#input_patterns = {}
" endif
"
" Disable the candidates in Comment/String syntaxes.
" call deoplete#custom#source('_',
"             \ 'disabled_syntaxes', ['Comment', 'String'])

" autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
"
" set sources
" let g:deoplete#sources = {}
" let g:deoplete#sources.cpp = ['LanguageClient']
" let g:deoplete#sources.python = ['LanguageClient']
" let g:deoplete#sources.python3 = ['LanguageClient']
" let g:deoplete#sources.rust = ['LanguageClient']
" let g:deoplete#sources.c = ['LanguageClient']
" let g:deoplete#sources.vim = ['vim']
"
" deoplete-racer config
" let g:deoplete#sources#rust#racer_binary='/Users/aenayet/.cargo/bin/racer'
" let g:deoplete#sources#rust#rust_source_path= '/Users/aenayet/.rustup/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/src'
" to join this conversation on GitHub. Already have an account? Sign in to comment


" ### hightlight whitespaces, and strip on saving file ###
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

let g:strip_trailing_lines = 1


" disable stripping trailing white spaces and empty lines
" let g:loaded_StripWhiteSpaces = 1
" let b:disable_StripWhiteSpaces = 1
