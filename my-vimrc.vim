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
      \ 'mode_map': { 'c': 'NORMAL' },
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ] ]
      \ },
      \ 'component_function': {
      \   'modified': 'LightLineModified',
      \   'readonly': 'LightLineReadonly',
      \   'fugitive': 'LightLineFugitive',
      \   'filename': 'LightLineFilename',
      \   'fileformat': 'LightLineFileformat',
      \   'filetype': 'LightLineFiletype',
      \   'fileencoding': 'LightLineFileencoding',
      \   'mode': 'LightLineMode',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

function! LightLineModified()
  return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! LightLineReadonly()
  return &ft !~? 'help\|vimfiler\|gundo' && &readonly ? '' : ''
endfunction

function! LightLineFilename()
  return ('' != LightLineReadonly() ? LightLineReadonly() . ' ' : '') .
        \ (&ft == 'vimfiler' ? vimfiler#get_status_string() :
        \  &ft == 'unite' ? unite#get_status_string() :
        \  &ft == 'vimshell' ? vimshell#get_status_string() :
        \ '' != expand('%:t') ? expand('%:t') : '[No Name]') .
        \ ('' != LightLineModified() ? ' ' . LightLineModified() : '')
endfunction

function! LightLineFugitive()
  if &ft !~? 'vimfiler\|gundo' && exists("*fugitive#head")
    let branch = fugitive#head()
    return branch !=# '' ? ' '.branch : ''
  endif
  return ''
endfunction

function! LightLineFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! LightLineFiletype()
  return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction

function! LightLineFileencoding()
  return winwidth(0) > 70 ? (&fenc !=# '' ? &fenc : &enc) : ''
endfunction

function! LightLineMode()
  return winwidth(0) > 60 ? lightline#mode() : ''
endfunction
" set terminal font to the one with Powerline in its name
" currently using Incosolata for Powerline Bold 12

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



