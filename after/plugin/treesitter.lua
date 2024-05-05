local configs = require("nvim-treesitter.configs")
configs.setup {
  ensure_installed = { "javascript", "typescript", "lua"},
  sync_install = false, 
  highlight = {
    enable = true, -- false will disable the whole extension
    --[[ disable = { "html" }, -- list of language that will be disabled ]]
    additional_vim_regex_highlighting = false,
  },
}
