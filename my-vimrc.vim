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

"if using the fonts from here: https://github.com/powerline/fonts
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ ['mode', 'paste'],
      \             ['fugitive', 'readonly', 'filename', 'modified'] ],
      \   'right': [ [ 'lineinfo' ], ['percent'] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"🔒":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }
" set terminal font to the one with Powerline in its name
" currently using Fira Mono Medim for Poerline Medium 12

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



