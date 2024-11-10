local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
--[[ vim.g.maplocalleader = " " ]]

--fast ex command mode
keymap("n", ";", ":", {noremap = true, silent = false})
keymap("n", ":", ";", {noremap = true, silent = false})

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Leader Key Mapping
keymap("n", "<Leader>h", ":noh<CR>", opts)

-- Create new tab
keymap("n", "<F1>", ":tabnew<CR>", opts)
keymap("v", "<F1>", "<Esc>:tabnew<CR>", opts)
keymap("i", "<F1>", "<Esc>:tabnew<CR>", opts)

-- Change Tabs
keymap("n", "<F2>", ":tabnext<CR>", opts)
keymap("v", "<F2>", "<Esc>:tabnext<CR>", opts)
keymap("i", "<F2>", "<Esc>:tabnext<CR>", opts)

-- Close Tab
keymap("n", "<F6>", ":tabclose<CR>", opts)
keymap("v", "<F6>", "<Esc>:tabclose<CR>", opts)
keymap("i", "<F6>", "<Esc>:tabclose<CR>", opts)

-- Normal --

-- Better window navigation
keymap("n", "sh", "<C-w>h", opts)
keymap("n", "sj", "<C-w>j", opts)
keymap("n", "sk", "<C-w>k", opts)
keymap("n", "sl", "<C-w>l", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Split Window
keymap("n", "ss", "<C-w>s", opts)
keymap("n", "sv", ":vsplit<CR>", opts)

-- Keep Main window
keymap("n", "so", "<C-w>o", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -4<CR>", opts)
keymap("n", "<C-Down>", ":resize +4<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -5<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +5<CR>", opts)

-- Navigate buffers
keymap("n", "<A-l>", ":bnext<CR>", opts)
keymap("n", "<A-h>", ":bprevious<CR>", opts)

-- Buffer Reload
keymap("n", "<F5>", ":e!<CR>", opts)


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

keymap("n", "<CR>", "o<Esc>", opts)
-- keymap("n", "<S-CR>", "O<Esc>", opts) -- Not working

-- Insert --
-- Press jk fast to enter
keymap("i", "kj", "<ESC>", opts)
-- keymap("i", "<C-c>", "<Esc>", opts)


-- Saving files
keymap("i", "<C-s>", "<ESC>:w<CR>", opts)
keymap("n", "<C-s>", ":w<CR>", opts)

-- Change Caps
-- keymap("n", "<C-u>", "gUiww", opts)
-- keymap("n", "<C-d>", "guiww", opts)

-- Buffers 
keymap("n", "<C-q>", ":q<CR>", opts) -- Close Windows
-- keymap("n", "<leader>d", ":bd<CR>", opts) -- Delete Buffer - Already mapped to <leader>c

-- Tab Normal
keymap("n", "<S-Tab>", ">>", opts)
keymap("n", ">", ">>", opts)
keymap("n", "<", "<<", opts)

-- adds comment in insert mode
-- keymap("n", "<C-v><C-/>", ":<Esc>gccA", opts)
keymap("i", "<C-_>", "<Esc>gccA", { noremap = false, silent = true })

-- go nearby surround
keymap("n", "<Tab>", "%", opts)
--[[ keymap("n", "<Tab>", "]%", {noremap = false, silent = true}) ]]
--[[ keymap("n", "<S-Tab>", "[%", {noremap = false, silent = true}) ]]

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
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)


-- Editor & Personal Settings
keymap("i", ",", ", ", opts)
keymap("i", "<C-d>", "<Del>", opts)


-- settings for c++ build
keymap("n", "<F8>", ":!g++ -lstdc++ -std=c++14 % && ./a.out", opts)
keymap("n", "<F3>", ":!g++ -lstdc++ -std=c++14 -lm -ldl % -o %:r && %:r < %:p:h/input.txt > %:p:h/output.txt<CR>", opts)
keymap("n", "<F4>", ":!python % < %:p:h/input.txt > %:p:h/output.txt<CR>", opts)
-- keymap("n", "<F8>", "<ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -DONPC -O2 -o %< % && ./%< < input.txt<CR>", opts)
keymap("i", "<F8>", "<ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -DONPC -O2 -o %< % && ./%< < input.txt<CR>", opts)
keymap("n", "<F9>", "<ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % && ./%< <CR>", opts)
keymap("i", "<F9>", "<ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % && ./%< <CR>", opts)
keymap("n", "<F10>", "<ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % && ./%< < inp<CR>", opts)
keymap("i", "<F10>", '<ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o "%<" "%" && "./%<" < inp<CR>', opts)

