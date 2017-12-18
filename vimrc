set nocompatible
set hlsearch
colorscheme desert

syntax on
filetype plugin indent on

" save history to /var/tmp (create folders manully)
set backupdir=/var/tmp/.backup//
set directory=/var/tmp/.swp//

set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4

set number
set showmatch

" http://learnvimscriptthehardway.stevelosh.com/chapters/14.html
augroup vimrc_autocmds
    autocmd!
    " highlight characters past column 80
    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python match Excess /\%80v.*/
    autocmd FileType python set nowrap
augroup END

" <Leader> is \
noremap <Leader>ee :e $HOME/.vim/vimrc<cr>

" No beep
set visualbell t_vb=

" NERDTree conf

let NERDTreeDirArrows=0
let NERDTreeIgnore=['\.pyc$', '\.pyo$']
let NERDTreeShowBookmarks=1
autocmd VimEnter * NERDTreeFromBookmark workspace
autocmd VimEnter * wincmd p

" Ctrl+v Alt+t = t
nmap <C-t> :NERDTreeToggle<CR>
