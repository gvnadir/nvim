local status, lualine = pcall(require, "lualine")
if (not status) then return end

local custom_theme = require 'lualine.themes.16color'
lualine.setup {
  options = {
    icons_enabled = true,
    -- theme = custom_theme,
    -- theme = 'ayu_dark',
    -- theme = 'molokai',
    -- theme = 'powerline_dark',
    -- theme = 'solarized_dark',
    theme = 'gruvbox_dark',
    -- theme = 'wombat',
    section_separators = { left = '', right = '' },
    component_separators = { left = '', right = '' },
    disabled_filetypes = {}
  },
  sections = {
    lualine_a = {{ 'mode',
      -- color = { fg = 'white', bg = 'black' }
    }},
    lualine_b = {{ 'branch',
      -- color = { fg = 'white', bg = 'black' }
    }},
    lualine_c = { {
      'filename',
      file_status = true, -- displays file status (readonly status, modified status)
      path = 0 -- 0 = just filename, 1 = relative path, 2 = absolute path
    } },
    lualine_x = {
      { 'diagnostics', sources = { "nvim_diagnostic" }, symbols = { error = ' ', warn = ' ', info = ' ',
        hint = ' ' } },
      'encoding',
      'filetype'
    },
    lualine_y = {{ 'progress',
     -- color = { fg = 'white', bg = 'black' }
    }},
    lualine_z = {{ 'location',
      -- color = { fg = 'white', bg = 'black' }
    }}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { {
      'filename',
      file_status = true, -- displays file status (readonly status, modified status)
      path = 1 -- 0 = just filename, 1 = relative path, 2 = absolute path
    } },
    lualine_x = { 'location' },
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = { 'fugitive' }
}
