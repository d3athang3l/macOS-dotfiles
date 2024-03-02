local status, _ = pcall(vim.cmd, "colorscheme purify")
if not status then
  print("Colorscheme not found!")
  return
end