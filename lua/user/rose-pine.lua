local status_ok, theme = pcall(require, "rose-pine")
if not status_ok then
  return
end


theme.setup {
  disable_italics = true,
}
