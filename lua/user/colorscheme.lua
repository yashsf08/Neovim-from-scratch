vim.cmd [[
try
  " colorscheme darkplus

  " ---------------- Spaceduck --------------------
  " if exists('+termguicolors')
  "   let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  "   let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  "   set termguicolors
  " endif
  " colorscheme spaceduck

  " ------------- Gruvbox ----------------
  " set background=dark
  colorscheme gruvbox

  " ------------- nightfox ----------------
  " colorscheme nightfox
  " colorscheme duskfox
  " " config for tokyonight
  " set background=dark
  " colorscheme tokyonight

  " ------------- papercolor light ----------------
  " config for PaperColor
  " set t_Co=256   " This is may or may not needed.
  " set background=light
  " colorscheme PaperColor

  " ------------- papercolor dark ----------------
  " set t_Co=256   " This is may or may not needed.
  " set background=dark
  " colorscheme PaperColor

  " ------------- Onedark ----------------
  " colorscheme onedark

catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
