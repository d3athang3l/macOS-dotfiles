-- import lualine plugin safely
local status, lualine = pcall(require, "lualine")
if not status then
  return
end
lualine.setup()
-- get lualine purify theme
local lualine_purify = require("lualine.themes.purify")

-- new colors for theme
local new_colors = {
  blue = "#65D1FF",
  green = "#3EFFDC",
  violet = "#FF61EF",
  yellow = "#FFDA7B",
  black = "#313440",
}

-- change purify theme colors
lualine_purify.normal.a.bg = new_colors.blue
lualine_purify.insert.a.bg = new_colors.green
lualine_purify.visual.a.bg = new_colors.violet
lualine_purify.command = {
  a = {
    gui = "bold",
    bg = new_colors.yellow,
    fg = new_colors.black, -- black
  },
}

-- configure lualine with modified theme
lualine.setup({
  options = {
    theme = lualine_purify,
  },
})