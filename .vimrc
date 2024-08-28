syntax on
set nu
set rnu
set laststatus=2
set statusline=%#PmenuSel#
set statusline+=%F%m%r%h%w
set statusline+=\ %=%L
set statusline+=\ %y
set statusline+=\ [%{&fileformat}\]
set statusline+=\ %l:%c
set statusline+=\ %3p%%
set expandtab ts=4 sw=4 ai

" workaround for fixing colors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
colorscheme catppuccin_mocha 
set termguicolors
