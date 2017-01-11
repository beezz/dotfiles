" Neobundle
 " Note: Skip initialization for vim-tiny or vim-small.
 if 0 | endif

 if has('vim_starting')
   if &compatible
     set nocompatible               " Be iMproved
   endif

   " Required:
   set runtimepath+=~/.config/nvim/bundle/neobundle.vim/
 endif

 " Required:
 call neobundle#begin(expand('~/.config/nvim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'

 " My Bundles here:
 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!
 NeoBundle 'rhysd/accelerated-jk'
 NeoBundle 'mhinz/vim-startify'
 NeoBundle 'Shougo/deoplete.nvim'
 NeoBundle 'benekastah/neomake'
 NeoBundle 'SirVer/ultisnips'
 NeoBundle 'honza/vim-snippets'
 NeoBundle 'othree/html5.vim'
 NeoBundle 'junegunn/fzf'
 NeoBundle 'junegunn/fzf.vim'
 NeoBundle 'hdima/python-syntax'
 NeoBundle 'JuliaLang/julia-vim'
 NeoBundle 'tpope/vim-fugitive'
 NeoBundle 'zchee/deoplete-jedi'
 NeoBundle 'majutsushi/tagbar'
 NeoBundle 'Shougo/neosnippet.vim'
 NeoBundle 'Shougo/neosnippet-snippets'
 NeoBundle 'tmhedberg/SimpylFold'
 NeoBundle 'pangloss/vim-javascript'
 NeoBundle 'ternjs/tern_for_vim'
 NeoBundle 'saltstack/salt-vim'
 NeoBundle 'stephpy/vim-yaml'
 NeoBundle 'sjl/gundo.vim'
 NeoBundle 'ekalinin/Dockerfile.vim'
 NeoBundle 'terryma/vim-multiple-cursors'
 NeoBundle 'NLKNguyen/papercolor-theme'
 NeoBundle 'dhruvasagar/vim-table-mode'
 NeoBundle 'Shougo/vimproc.vim', {
 \ 'build' : {
 \     'windows' : 'tools\\update-dll-mingw',
 \     'cygwin' : 'make -f make_cygwin.mak',
 \     'mac' : 'make',
 \     'linux' : 'make',
 \     'unix' : 'gmake',
 \    },
 \ }
 NeoBundle 'Shougo/unite.vim'
 NeoBundle 'vim-scripts/SQLComplete.vim'
 NeoBundle 'racer-rust/vim-racer'
 NeoBundle 'rust-lang/rust.vim'
 NeoBundle 'lepture/vim-jinja'


 call neobundle#end()

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck


" Accelerate moving with jk
nmap j <Plug>(accelerated_jk_gj)
nmap k <Plug>(accelerated_jk_gk)

" Toggle tagbar
nmap <F8> :TagbarToggle<CR>

syntax on
syntax enable
set smartcase
set ignorecase
let python_highlight_all = 1

set t_Co=256

if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif

set background=light
colorscheme PaperColor


"NeoVim handles ESC keys as alt+key set this to solve the problem
if has('nvim')
    set ttimeout
    set ttimeoutlen=0
endif


" DESC: Remove unused whitespaces
fun! TrimWhitespaces() "{{{
   let cursor_pos = getpos('.')
   silent! %s/\s\+$//
   call setpos('.', cursor_pos)
endfunction "}}}

autocmd BufWritePre * call TrimWhitespaces()


" Completion via deocomplete
let g:deoplete#enable_at_startup = 1

" fuzzy finder
set rtp+=~/.fzf

" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

nnoremap <C-t> :FZF<Enter>

" run neomake on every write
" autocmd! BufWritePost * Neomake
" open loclist on errors from neomake, but preserve cursor position
let g:neomake_open_list = 2
" neomake's loclist size
let g:neomake_list_height = 3
let g:neomake_rust_enabled_makers = []

" close preview window on leaving the insert mode
autocmd InsertLeave * if pumvisible() == 0 | pclose | endif

" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" Change default session dir
let g:prosession_dir="~/.nvim/session/"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" for html only 2 spaces on tab
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2

" for js only 2 spaces on tab
" autocmd FileType javascript setlocal shiftwidth=2 tabstop=2

" Quickfix
noremap [q :cprevious<CR>
noremap ]q :cnext<CR>
noremap [Q :cfirst<CR>
noremap ]Q :clast<CR>

" Location List
noremap [l :lprevious<CR>
noremap ]l :lnext<CR>
noremap [L :lfirst<CR>
noremap ]L :llast<CR>

" Buffer
nnoremap [b :bprevious<CR>
nnoremap ]b :bnext<CR>
nnoremap [B :bfirst<CR>
nnoremap ]B :blast<CR>

" Tab
noremap [t :tabprevious<CR>
noremap ]t :tabnext<CR>
noremap [T :tabfirst<CR>
noremap ]T :tablast<CR>
noremap <leader>` :tabnew<CR>
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>- :Texplore<CR>

" Neosnippet Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

nnoremap <F5> :GundoToggle<CR>

set nowrap
set noswapfile
set number

let g:python_host_prog = $HOME.'/.config/nvim/pyenvs/py2/bin/python'
let g:python3_host_prog = $HOME.'/.config/nvim/pyenvs/py3/bin/python'

let g:PaperColor_Light_Override = {'background' : '#0000'}

nnoremap <silent> ,g :<C-u>Unite grep:. -buffer-name=search-buffer<CR>
if executable('pt')
  let g:unite_source_grep_command = 'pt'
  let g:unite_source_grep_default_opts = '--nogroup --nocolor --context=0'
  let g:unite_source_grep_recursive_opt = ''
  let g:unite_source_grep_encoding = 'utf-8'
endif

set cursorline
set cursorcolumn

function! NeoMakeToggle()
    if exists('#NeoMakeToggle#BufWritePost')
        augroup NeoMakeToggle
            autocmd!
        augroup END
    else
        augroup NeoMakeToggle
            autocmd!
            autocmd! BufWritePost * Neomake
        augroup END
    endif
endfunction
call NeoMakeToggle()

function! NeoMakeCargoToggle()
    if exists('#NeoMakeCargoToggle#BufWritePost')
        augroup NeoMakeToggle
            autocmd!
        augroup END
    else
        augroup NeoMakeToggle
            autocmd!
            autocmd! BufWritePost * Neomake! cargo
        augroup END
    endif
endfunction

set hidden
let g:racer_cmd = $HOME.'/.cargo/bin/racer'
let $RUST_SRC_PATH=$HOME.'/git-repos/github/rust/src'

" RestructuredText compatible tables
let g:table_mode_corner_corner="+"
let g:table_mode_header_fillchar="="


"
" Statusline
"
set statusline=
set statusline+=\[%n]                                  "buffernr
set statusline+=\ %<%f\                                "File+path
set statusline+=\ %m%y\                                "FileType
set statusline+=\ %{''.(&fenc!=''?&fenc:&enc).''}      "Encoding
set statusline+=\ %{&spelllang}\  		       "Spellanguage
set statusline+=\ %=\ %l/%c\                           "Row/Column
