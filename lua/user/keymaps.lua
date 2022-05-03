local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Leader Key Mapping
keymap("n", "<Leader>h", ":noh<CR>", opts)



-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Split Windows 
keymap("n", "ss", ":split<CR>", opts)
keymap("n", "sv", ":vsplit<CR>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -4<CR>", opts)
keymap("n", "<C-Down>", ":resize +4<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -5<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +5<CR>", opts)

-- Navigate buffers
keymap("n", "<A-l>", ":bnext<CR>", opts)
keymap("n", "<A-h>", ":bprevious<CR>", opts)

-- Start and end of line
keymap("n", "<S-h>", "^", opts)
keymap("n", "<S-l>", "$", opts)


-- Better Navigation 
keymap("n", "J", "6j", opts)
keymap("n", "K", "6k", opts)
-- keymap("n", "j", "j$", opts)
-- keymap("n", "k", "k$", opts)

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)
keymap("i", "kj", "<ESC>", opts)
keymap("i", "<C-c>", "<Esc>", opts)


-- Saving files
keymap("i", "<C-s>", "<ESC>:w<CR>", opts)
keymap("n", "<C-s>", ":w<CR>", opts)

-- Word Manipulations
keymap("n", "<C-u>", "gUiww", opts)
keymap("n", "<C-d>", "guiw", opts)


-- Buffers 
keymap("n", "<C-q>", ":q<CR>", opts)

-- Tab Normal
keymap("n", "<Tab>", ">>", opts)
keymap("n", "<S-Tab>", "<<", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)
-- keymap("v", "<Tab>", ">gv", opts)
-- keymap("v", "<S-Tab>", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)


-- Editor & Personal Settings

  -- Adding space after every comma
keymap("i", ",", ",<Space>", opts)
  -- Delete Character in insert mode
keymap("i", "<C-d>", "<Del>", opts)



