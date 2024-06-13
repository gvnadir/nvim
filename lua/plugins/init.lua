-- NOTE: Plugins can be added with a link (or for a github repo: 'owner/repo' link).
return {
  {
    'nvim-lua/plenary.nvim',
    name = 'plenary',
  },
  -- {
  --   'pappasam/papercolor-theme-slim',
  --   config = function(_, opts)
  --     -- Load the colorscheme here
  --     vim.cmd.colorscheme 'PaperColorSlim'
  --   end,
  -- },
  -- {
  --   'ellisonleao/gruvbox.nvim',
  --   opts = {
  --     terminal_colors = true, -- add neovim terminal colors
  --     undercurl = true,
  --     underline = true,
  --     bold = true,
  --     italic = {
  --       strings = true,
  --       emphasis = true,
  --       comments = true,
  --       operators = false,
  --       folds = true,
  --     },
  --     strikethrough = true,
  --     invert_selection = false,
  --     invert_signs = false,
  --     invert_tabline = false,
  --     invert_intend_guides = false,
  --     inverse = true, -- invert background for search, diffs, statuslines and errors
  --     contrast = '', -- can be "hard", "soft" or empty string
  --     palette_overrides = {},
  --     overrides = {},
  --     dim_inactive = false,
  --     transparent_mode = false,
  --   },
  --   config = function(_, opts)
  -- --     -- Load the colorscheme here
  --     vim.cmd.colorscheme 'gruvbox'
  -- --
  -- --     -- You can configure highlights by doing something like
  --     vim.cmd.hi 'Comment gui=none'
  --   end,
  -- },
  -- {
  --   'Mofiqul/vscode.nvim',
  --   opts = {
  --     -- Alternatively set style in setup
  --     -- style = 'light'
  --
  --     -- Enable transparent background
  --     transparent = true,
  --
  --     -- Enable italic comment
  --     italic_comments = true,
  --
  --     -- Underline `@markup.link.*` variants
  --     underline_links = true,
  --
  --     -- Disable nvim-tree background color
  --     disable_nvimtree_bg = true,
  --
  --     -- Override colors (see ./lua/vscode/colors.lua)
  --     color_overrides = {
  --       vscLineNumber = '#FFFFFF',
  --     },
  --   },
  --   config = function(_, opts)
  --     -- Load the colorscheme here
  --     vim.cmd.colorscheme 'vscode'
  --
  --     -- You can configure highlights by doing something like
  --     vim.cmd.hi 'Comment gui=none'
  --   end,
  -- },
  -- {
  --   'navarasu/onedark.nvim',
  --   opts = {
  --     -- Main options --
  --     style = 'dark', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
  --     transparent = false, -- Show/hide background
  --     term_colors = true, -- Change terminal color as per the selected theme style
  --     ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
  --     cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu
  --
  --     -- toggle theme style ---
  --     toggle_style_key = nil, -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
  --     toggle_style_list = { 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light' }, -- List of styles to toggle between
  --
  --     -- Change code style ---
  --     -- Options are italic, bold, underline, none
  --     -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
  --     code_style = {
  --       comments = 'italic',
  --       keywords = 'none',
  --       functions = 'none',
  --       strings = 'none',
  --       variables = 'none',
  --     },
  --
  --     -- Lualine options --
  --     lualine = {
  --       transparent = false, -- lualine center bar transparency
  --     },
  --
  --     -- Custom Highlights --
  --     colors = {}, -- Override default colors
  --     highlights = {}, -- Override highlight groups
  --
  --     -- Plugins Config --
  --     diagnostics = {
  --       darker = true, -- darker colors for diagnostic
  --       undercurl = true, -- use undercurl instead of underline for diagnostics
  --       background = true, -- use background color for virtual text
  --     },
  --   },
  --   config = function(_, opts)
  --     require('onedark').setup(opts)
  --
  --     -- Load the colorscheme here
  --     vim.cmd.colorscheme 'onedark'
  --
  --     -- You can configure highlights by doing something like
  --     vim.cmd.hi 'Comment gui=none'
  --   end,
  -- },
  -- {
  --   'rebelot/kanagawa.nvim',
  --   opts = {
  --     compile = false, -- enable compiling the colorscheme
  --     undercurl = true, -- enable undercurls
  --     commentStyle = { italic = false },
  --     functionStyle = {},
  --     keywordStyle = { italic = false },
  --     statementStyle = { bold = true },
  --     typeStyle = {},
  --     transparent = false, -- do not set background color
  --     dimInactive = false, -- dim inactive window `:h hl-NormalNC`
  --     terminalColors = true, -- define vim.g.terminal_color_{0,17}
  --     colors = { -- add/modify theme and palette colors
  --       palette = {},
  --       theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
  --     },
  --     overrides = function(colors) -- add/modify highlights
  --       return {}
  --     end,
  --     theme = 'wave', -- Load "wave" theme when 'background' option is not set
  --     background = { -- map the value of 'background' option to a theme
  --       dark = 'wave', -- try "dragon" !
  --       light = 'lotus',
  --     },
  --   },
  --   config = function(_, opts)
  --     require('kanagawa').setup(opts)
  --
  --     -- Load the colorscheme here
  --     vim.cmd.colorscheme 'kanagawa'
  --     -- You can configure highlights by doing something like
  --     vim.cmd.hi 'Comment gui=none'
  --   end,
  -- },

  {
    'rose-pine/neovim',
    name = 'rose-pine',
    opts = {
      variant = 'auto', -- auto, main, moon, or dawn
      dark_variant = 'main', -- main, moon, or dawn
      dim_inactive_windows = false,
      extend_background_behind_borders = true,

      enable = {
        terminal = true,
        legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
        migrations = true, -- Handle deprecated options automatically
      },

      styles = {
        bold = true,
        italic = false,
        transparency = false,
      },

      groups = {
        border = 'muted',
        link = 'iris',
        panel = 'surface',

        error = 'love',
        hint = 'iris',
        info = 'foam',
        note = 'pine',
        todo = 'rose',
        warn = 'gold',

        git_add = 'foam',
        git_change = 'rose',
        git_delete = 'love',
        git_dirty = 'rose',
        git_ignore = 'muted',
        git_merge = 'iris',
        git_rename = 'pine',
        git_stage = 'iris',
        git_text = 'rose',
        git_untracked = 'subtle',

        h1 = 'iris',
        h2 = 'foam',
        h3 = 'rose',
        h4 = 'gold',
        h5 = 'pine',
        h6 = 'foam',
      },

      highlight_groups = {
        -- Comment = { fg = "foam" },
        -- VertSplit = { fg = "muted", bg = "muted" },
      },

      before_highlight = function(group, highlight, palette)
        -- Disable all undercurls
        -- if highlight.undercurl then
        --     highlight.undercurl = false
        -- end
        --
        -- Change palette colour
        -- if highlight.fg == palette.pine then
        --     highlight.fg = palette.foam
        -- end
      end,
    },
    config = function(_, opts)
      require('rose-pine').setup(opts)

      -- Load the colorscheme here
      vim.cmd.colorscheme 'rose-pine'
      -- You can configure highlights by doing something like
      vim.cmd.hi 'Comment gui=none'
    end,
  },

  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically

  -- Highlight todo, notes, etc in comments
  { 'folke/todo-comments.nvim', dependencies = { 'plenary' }, opts = { signs = false } },

  -- Handy bracket keymaps
  {
    'tummetott/unimpaired.nvim',
    event = 'VeryLazy',
    -- This is needed
    -- because it calls require('unimpaired').setup()
    config = true,
  },

  {
    'm4xshen/hardtime.nvim',
    dependencies = { 'MunifTanjim/nui.nvim', 'plenary' },
    opts = {
      restriction_mode = 'hint',
      restricted_keys = {
        ['h'] = {},
        ['j'] = {},
        ['k'] = {},
        ['l'] = {},
      },
      -- Reenable arrow keys cause i have a layer that replicates hjkl
      disabled_keys = {
        ['<Up>'] = {},
        ['<Down>'] = {},
        ['<Left>'] = {},
        ['<Right>'] = {},
      },
      disabled_filetypes = { 'qf', 'netrw', 'NvimTree', 'lazy', 'mason', 'oil', 'neo-tree' },
    },
  },
}
