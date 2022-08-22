vim.cmd [[
try
  colorscheme solarized8 
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
