local options = {
  backup = false,                          -- creates a backup file
  clipboard = "unnamedplus",               -- allows neovim to access the system clipboard
  cmdheight = 1,                           -- more space in the neovim command line for displaying messages
  completeopt = { "menuone", "noselect" }, -- mostly just for cmp
  conceallevel = 0,                        -- so that `` is visible in markdown files
  fileencoding = "utf-8",                  -- the encoding written to a file
  hlsearch = true,                         -- highlight all matches on previous search pattern
  incsearch = true,
  ignorecase = true,                       -- ignore case in search patterns
  mouse = "a",                             -- allow the mouse to be used in neovim
  pumheight = 10,                          -- pop up menu height
  showmode = false,                        -- we don't need to see things like -- INSERT -- anymore
  showtabline = 2,                         -- always show tabs
  smartcase = true,                        -- smart case
  smartindent = true,                      -- make indenting smarter again
  splitbelow = true,                       -- force all horizontal splits to go below current window
  splitright = true,                       -- force all vertical splits to go to the right of current window
  swapfile = false,                        -- creates a swapfile
  termguicolors = true,                    -- set term gui colors (most terminals support this)
  timeoutlen = 100,                        -- time to wait for a mapped sequence to complete (in milliseconds)
  undofile = false,                        -- enable persistent undo | Remember undo from previous sessions
  updatetime = 300,                        -- faster completion (4000ms default)
  writebackup = false,                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
  expandtab = true,                        -- convert tabs to spaces
  shiftwidth = 2,                          -- the number of spaces inserted for each indentation
  tabstop = 2,                             -- insert 2 spaces for a tab
  cursorline = true,                       -- highlight the current line
  cursorcolumn = false,                    -- highlight the current column
  number = true,                           -- set numbered lines
  relativenumber = false,                  -- set relative numbered lines
  numberwidth = 2,                         -- set number column width to 2 {default 4}
  signcolumn = "no",                       -- always show the sign column, otherwise it would shift the text each time (yes | no | number)
  wrap = false,                            -- display lines as one long line
  wrapscan = true,                         --[[ Searches wrap around the end of the file ]]
  scrolloff = 8,                           -- is one of my fav
  sidescrolloff = 8,
  --[[ guifont = "JuliaMono:h12",               -- the font used in graphical neovim applications ]]
  --[[ guifont = "Fira Code:h11",               -- the font used in graphical neovim applications ]]
  guifont = "Monego:h12",               -- the font used in graphical neovim applications
  --[[ guifont = "Monaco for Powerline:h12",               -- the font used in graphical neovim applications ]]
  autoread = true,                         -- autoreload file when something change
  foldmethod = "expr",                     -- Enable code folding with rule as "expression" ("manual" is default value)
  foldexpr = "nvim_treesitter#foldexpr()", -- Using code folding with treesitter
  -- foldopen = "all"                      -- automatic unfold as you jump to the position ( all | block | hor | insert | jump | mark | percent | quickfix | search | tab | undo )
  -- foldclose = "all"                        
  -- nofoldenable = "no",                     -- disable auto code folding on files
  hidden = false,
  ruler = true,                            --[[ Show the line and column number of the cursor position, separated by a comma.]]
  linespace = 0,                           --[[ Number of pixel lines inserted between characters. ]]
  showcmd = true,                          --[[ Show each command executed in the last line of the screen. ]]
}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.cmd "set nofen"
vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
vim.cmd [[set formatoptions-=cro]] -- NOTE: this doesn't seem to work

vim.cmd [[ 
    " trigger `autoread` when files changes on disk
      set autoread
      autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
    " notification after file change
      autocmd FileChangedShellPost *
        \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None
]]
