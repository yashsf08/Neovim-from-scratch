vim.cmd [[
try
  " if exists('+termguicolors')
  "   let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  "   let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  "   set termguicolors
  " endif
  " colorscheme spaceduck
  colorscheme darkplus
  " gruvbox settings

  " " config for gruvbox
  " set background=dark
  " colorscheme gruvbox

  " colorscheme nightfox
  " colorscheme duskfox
  " " config for tokyonight
  " set background=dark
  " colorscheme tokyonight

  " config for PaperColor
  " set t_Co=256   " This is may or may not needed.
  " set background=light
  " colorscheme PaperColor

  " set t_Co=256   " This is may or may not needed.
  " set background=dark
  " colorscheme PaperColor

  " colorscheme onedark

catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
