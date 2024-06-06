-- See `:help vim.opt`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`

vim.opt.termguicolors = true

-- Make line numbers default
vim.opt.number = true
-- You can also add relative line numbers, for help with jumping.
--  Experiment for yourself to see if you like it!
vim.opt.relativenumber = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'

-- Don't show the mode, since it's already in the status line
-- vim.opt.showmode = false

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = false
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- Set highlight on search
vim.opt.hlsearch = true

vim.opt.wrap = false

if vim.fn.has 'nvim-0.10' == 1 then
  vim.opt.smoothscroll = true
end

-- Set Tab stop to 2
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.bo.softtabstop = 4

-- Map <leader>y to "+y in normal mode
vim.keymap.set('n', '<leader>y', '"+y', { noremap = true, silent = true })

-- Map <leader>p to "+p in normal mode
vim.keymap.set('n', '<leader>p', '"+p', { noremap = true, silent = true })

-- Map <leader>y to "+y in visual mode
vim.keymap.set('v', '<leader>y', '"+y', { noremap = true, silent = true })

-- Map <leader>p to "+p in visual mode
vim.keymap.set('v', '<leader>p', '"+p', { noremap = true, silent = true })
