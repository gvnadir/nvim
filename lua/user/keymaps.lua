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
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Resize with arrows
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>")
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>")
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>")
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>")

-- Navigate buffers
vim.keymap.set("n", "<S-l>", ":bnext<CR>")
vim.keymap.set("n", "<S-h>", ":bprevious<CR>")
-- vim.keymap.set("n", "<leader>x", ":Bdelete<CR>")

-- Move text up and down
vim.keymap.set("n", "<A-j>", "<Esc>:m .+1<CR>==gi")
vim.keymap.set("n", "<A-k>", "<Esc>:m .-2<CR>==gi")

-- Visual --
-- Stay in indent mode
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

vim.keymap.set("v", "p", '"_dP')

-- Visual Block --
-- Move text up and down
vim.keymap.set("x", "J", ":move '>+1<CR>gv-gv")
vim.keymap.set("x", "K", ":move '<-2<CR>gv-gv")
vim.keymap.set("x", "<A-j>", ":move '>+1<CR>gv-gv")
vim.keymap.set("x", "<A-k>", ":move '<-2<CR>gv-gv")

-- Append the line below to the current line with a space
vim.keymap.set("n", "J", "mzJ`z")

-- jump file without losing focus
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- keep cursor to center when itering occurence
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Terminal --
-- Better terminal navigation
vim.keymap.set("t", "<C-h>", "<C-\\><C-N><C-w>h")
vim.keymap.set("t", "<C-j>", "<C-\\><C-N><C-w>j")
vim.keymap.set("t", "<C-k>", "<C-\\><C-N><C-w>k")
vim.keymap.set("t", "<C-l>", "<C-\\><C-N><C-w>l")

-- replace current word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files({previewer = false})<cr>")
vim.keymap.set("n", "<C-f>", "<cmd>lua require'telescope.builtin'.git_files({previewer = false})<cr>")
-- vim.keymap.set("n", "<leader>b", "<cmd>lua require'telescope.builtin'.buffers()<cr>")
vim.keymap.set("n", "<leader>b", ":buffer<space>")
vim.keymap.set("n", "<leader>x", ":bdelete<cr>")
vim.keymap.set("n", "<leader>g", "<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<cr>")
vim.keymap.set("n", "<leader>do", ":DiffviewOpen<cr>")
vim.keymap.set("n", "<leader>dc", ":DiffviewClose<cr>")
vim.keymap.set("n", "<leader>ss", ":vsplit<cr>")
vim.keymap.set("n", "<leader>sh", ":split<cr>")

-- toggle ZenMode
vim.keymap.set("n", "<leader>z", ":ZenMode<cr>")

-- toggle Undotree
vim.keymap.set("n", "<leader>u", ":UndotreeToggle<cr>")

-- Nvimtree
vim.keymap.set("n", "<leader>E", ":NvimTreeToggle<cr>")
-- Explorer
vim.keymap.set("n", "<leader>e", ":Ex<cr>")

-- Git
vim.keymap.set("n", "<leader>G", ":Git")

-- Fix highlights
vim.keymap.set("n", "<ESC>", ":noh<cr>")
