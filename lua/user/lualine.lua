local status, lualine = pcall(require, "lualine")
if (not status) then return end

local custom_theme = require 'lualine.themes.16color'

lualine.setup {
  options = {
    icons_enabled = true,
    theme = custom_theme,
     -- theme = 'solarized_dark',
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = { {
      'mode',
      color = { fg = 'white', bg = 'black' }
    } },
    lualine_b = { { 'branch', '', 'diagnostics',
      color = { fg = 'white', bg = 'black' }
    } },
    lualine_c = { 'filename' },
    lualine_x = { 'encoding', 'fileformat', 'filetype' },
    lualine_y = { { 'progress',

      color = { fg = 'white', bg = 'black' }
    } },
    lualine_z = { { 'location',

      color = { fg = 'white', bg = 'black' }
    } }
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { 'filename' },
    lualine_x = { 'location' },
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
