set runtimepath+=~/.vim_runtime
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'dracula/vim'
call vundle#end()

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry

" try
"     colorscheme dracula
" catch
" endtry

" color dracula

"set background=dark
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='jellybeans'
let g:airline_powerline_fonts = 1

let g:NERDTreeShowHidden = 0     "显示隐藏文件
nmap <F3> :NERDTreeToggle<cr>
nmap <F4> :call ToggleLineNumber()<cr>
nmap <F5> :vert diffsplit <c-r>=expand("%:p:h")<cr>/
nmap <leader>q :q<cr>
nmap <leader>x :wq<cr>
nmap \ :e <c-r>=expand("%:p:h")<cr>/
nmap <leader>v :vsp <c-r>=expand("%:p:h")<cr>/
nmap <M-TAB> :bn<cr>

vmap <c-c> "+y
vmap / gc
nmap <c-x> "+x
map <c-v> "+gP
nmap <c-a> ggVG
nmap <c-z> u

nmap <M-1> 1gt
nmap <M-2> 2gt
nmap <M-3> 3gt
nmap <M-4> 4gt
nmap <M-5> 5gt
nmap <M-6> 6gt
nmap <M-7> 7gt
nmap <M-8> 8gt
nmap <M-9> 9gt
nmap <M-r> :%s/

let g:lineNumber = 0
function! ToggleLineNumber() 
    if g:lineNumber == 0
        set nu
        let g:lineNumber = 1
    else
        set nonu
        let g:lineNumber = 0
    endif
endfunction 
