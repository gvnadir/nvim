vim.cmd [[
try
  colorscheme abstract 
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
