set runtimepath+=~/.vim_runtime

 source ~/.vim_runtime/vimrcs/basic.vim
 source ~/.vim_runtime/vimrcs/filetypes.vim
 source ~/.vim_runtime/vimrcs/plugins_config.vim
 source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry

set number
set cursorline

"set nerdtree position
let g:NERDTreeWinPos = "left"
"automatically call nerdtree on startup and set cursor to one of the open window
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

"this is for normal mode, use tab to go to the next window and shift-tab to the previous window
nnoremap <tab> <C-W>w
nnoremap <s-tab>  <C-W><C-P>

" This block set the solarized color theme, not use when commented out
"let g:solarized_termcolors=256

"set background=light
"colo solarized


"good color schemes
"
"dark theme lists
"colo peaksea
"colo rdark-terminal
"colo molokai
"colo Tomorrow-Night
"colo Tomorrow-Night-Bright
"
"
"light theme
"the solarized above
"colo Tomorrow
"colo Tomorrow-Night-Blue
"
"



