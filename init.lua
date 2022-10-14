require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.colorscheme"
require "user.cmp"
require "user.lsp"
require "user.telescope"
require "user.treesitter"
require "user.autopairs"
require "user.comment"
require "user.gitsigns"
require "user.nvim-tree"
require "user.bufferline"
require "user.lualine"
require "user.toggleterm"
require "user.colorizer"
-- require "user.nvim-transparent"
-- require "user.neosolarized"
-- require "user.indent-blankline"

 vim.o.background = "dark" 
 vim.cmd([[colorscheme gruvbox]])

local has = function(x)
  return vim.fn.has(x) == 1
end
local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then
  require('user.macos')
end
if is_win then
  require('user.windows')
end
