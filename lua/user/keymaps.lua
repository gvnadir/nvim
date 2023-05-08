local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

--Remap space as leader key
vim.keymap.set("", "<Space>", "<Nop>")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", opts)
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", opts)
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", opts)
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
vim.api.nvim_set_keymap("n", "<C-Up>", ":resize -2<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-Down>", ":resize +2<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
vim.api.nvim_set_keymap("n", "<S-l>", ":bnext<CR>", opts)
vim.api.nvim_set_keymap("n", "<S-h>", ":bprevious<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>x", ":Bdelete<CR>", opts)

-- Move text up and down
vim.api.nvim_set_keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
vim.api.nvim_set_keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Visual --
-- Stay in indent mode
vim.api.nvim_set_keymap("v", "<", "<gv", opts)
vim.api.nvim_set_keymap("v", ">", ">gv", opts)

vim.api.nvim_set_keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
vim.api.nvim_set_keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
vim.api.nvim_set_keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
vim.api.nvim_set_keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
vim.api.nvim_set_keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Append the line below to the current line with a space
vim.api.nvim_set_keymap("n", "J", "mzJ`z", opts)

-- jump file without losing focus
vim.api.nvim_set_keymap("n", "<C-d>", "<C-d>zz", opts)
vim.api.nvim_set_keymap("n", "<C-u>", "<C-u>zz", opts)

-- keep cursor to center when itering occurence
vim.api.nvim_set_keymap("n", "n", "nzzzv", opts)
vim.api.nvim_set_keymap("n", "N", "Nzzzv", opts)

-- Terminal --
-- Better terminal navigation
vim.api.nvim_set_keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
vim.api.nvim_set_keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
vim.api.nvim_set_keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
vim.api.nvim_set_keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- replace current word
vim.api.nvim_set_keymap("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], opts)

vim.api.nvim_set_keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files({previewer = false})<cr>", opts)
vim.api.nvim_set_keymap("n", "<C-f>", "<cmd>lua require'telescope.builtin'.git_files({previewer = false})<cr>", opts)
vim.api.nvim_set_keymap("n", "<leader>b", "<cmd>lua require'telescope.builtin'.buffers()<cr>", opts)
vim.api.nvim_set_keymap("n", "<leader>g", "<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<cr>", opts)
vim.api.nvim_set_keymap("n", "<leader>do", ":DiffviewOpen<cr>", opts)
vim.api.nvim_set_keymap("n", "<leader>dc", ":DiffviewClose<cr>", opts)
vim.api.nvim_set_keymap("n", "<leader>ss", ":vsplit<cr>", opts)
vim.api.nvim_set_keymap("n", "<leader>sh", ":split<cr>", opts)

-- Nvimtree
--[[ vim.api.nvim_set_keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts) ]]
--
vim.api.nvim_set_keymap("n", "<leader>e", ":Ex<cr>", opts)
--
-- Fix
vim.api.nvim_set_keymap("n", "<ESC>", ":noh<cr>", opts)
