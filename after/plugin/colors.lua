function ColorMyPencils(color)
  color = color or "rose-pine"
  vim.cmd.colorscheme(color)

  -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()

-- Gruvbox hard
-- vim.cmd([[
--   highlight Normal guibg=#1D2021 guifg=#FBF1C7
--   highlight CursorLine guibg=#32302F
--   highlight StatusLine guibg=#32302F guifg=#FBF1C7
--   highlight VertSplit guifg=#282828 guibg=#282828
-- ]])
