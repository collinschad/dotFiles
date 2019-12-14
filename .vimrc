set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'dylanaraps/wal.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'brennier/quicktex'
Plugin 'terryma/vim-smooth-scroll'
Plugin 'Raimondi/delimitMate'
Plugin 'aserebryakov/vim-todo-lists'
Plugin 'junegunn/vim-easy-align'
Plugin 'tpope/vim-commentary'
Plugin 'jeetsukumaran/vim-buffergator'

call vundle#end()            " required
filetype plugin indent on    " required

let delimitMate_expand_cr=1

" Some basics:
    syntax on
    set encoding=utf-8
    set number
    set relativenumber
    colorscheme wal
    "set backspace=indent,eol,start
    let mapleader=" "

" Splits open at the bottom and right
    set splitbelow
    set splitright

" Shortcuts to navigate splits:
    map <C-h> <C-w>h
    map <C-j> <C-w>j
    map <C-k> <C-w>k
    map <C-l> <C-w>l

" Unmap <c-space>
   imap <c-@> <Nop>

" Try to open corresponding pdf for markdown files

" Goyo for distraction free
    map <leader>z :Goyo <bar><CR>

" More Goyo height
    let g:goyo_height=100

" Delete trailing whitespace on save
    autocmd BufWritePre * %s/\s\+$//e

" Disable automatic commenting on new line
    autocmd FileType * setlocal formatoptions-=c formatoptions -=r formatoptions -=o

" Indentation/Words per line
    set linebreak
    set breakindent
    "set showbreak=\ \ "
    set backspace=2
    set autoindent
    autocmd FileType c highlight ColorColumn ctermbg=magenta
    autocmd FileType c call matchadd('ColorColumn', '\%81v', 100)
    autocmd FileType h highlight ColorColumn ctermbg=magenta
    autocmd FileType h call matchadd('ColorColumn', '\%81v', 100)

" Navigate lines with visual line breaks
    nnoremap <expr> j v:count ? (v:count > 5 ? "m'" . vcount : '') . 'j' : 'gj'
    nnoremap <expr> k v:count ? (v:count > 5 ? "m'" . vcount : '') . 'k' : 'gk'

" Get out of delimiters easier
    inoremap <C-e> <C-o>a

" Edit and source vimrc easy
    nnoremap <leader>ev :vsplit ~/.vimrc<CR>
    nnoremap <leader>sv :source ~/.vimrc<CR>

" Tabs become 4 spaces
    set tabstop=4
    set shiftwidth=4
    set softtabstop=4
    set expandtab

" See tabs visually
    set list
    set listchars=tab:>-

" LaTeX
    autocmd FileType tex nnoremap <leader>r :!pdflatex %<CR><CR>
    autocmd FileType tex map <leader>p :!zathura <C-r>%<backspace><backspace><backspace>pdf & <CR><CR>

" Pandoc needs 3 spaces instead of 4
    autocmd FileType markdown set ts=3 sw=3 expandtab softtabstop=3

" Mammen specifies 3 spaces for c files
    autocmd FileType c set ts=3 sw=3 expandtab softtabstop=3
    autocmd FileType h set ts=3 sw=3 expandtab softtabstop=3

" Compile markdown files using pandoc
" The pkill -HUP sends a signal to mupdf to refresh
    autocmd FileType markdown nnoremap <leader>r :!pandoc % -s -o %:r.pdf <CR><CR> :!pkill -HUP mupdf<CR><CR>
    autocmd FileType markdown map <leader>p :!zathura <C-r>%<backspace><backspace>pdf & <CR><CR>

" Quicktex dictionaries
    source ~/.vim/bundle/quicktex/tex_mappings.vim
    source ~/.vim/bundle/quicktex/markdown_mappings.vim
    source ~/.vim/bundle/quicktex/java_mappings.vim
    nnoremap <leader>qt :vsplit ~/.vim/bundle/quicktex/tex_mappings.vim<CR>
    nnoremap <leader>qm :vsplit ~/.vim/bundle/quicktex/markdown_mappings.vim<CR>

" Smooth Scroll
    noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 40, 2)<CR>
    noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 40, 2)<CR>
    noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 40, 4)<CR>
    noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 40, 4)<CR>

" Todo list mappings
    autocmd FileType todo nnoremap <leader><Space> :VimTodoListsToggleItem<CR>

" Markdown Tables
    au FileType markdown vmap <Leader><Bslash> :EasyAlign*<Bar><Enter>
