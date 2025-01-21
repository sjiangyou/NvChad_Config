-- this line for types, by hovering and autocompletion (lsp required)
-- will help you understanding properties, fields, and what highlightings the color used for
---@type Base46Table
local M = {}
-- UI
M.base_30 = {
  white = "#ffffff",
  black = "#0f0f0f", -- usually your theme bg
  darker_black = "#000000", -- 6% darker than black
  black2 = "#1d1d1d", -- 6% lighter than black
  one_bg = "#272727", -- 10% lighter than black
  one_bg2 = "#343434", -- 6% lighter than one_bg2
  one_bg3 = "#404040", -- 6% lighter than one_bg3
  grey = "#6f6f6f", -- 40% lighter than black (the % here depends so choose the perfect grey!)
  grey_fg = "#7d7d7d", -- 10% lighter than grey
  grey_fg2 = "#757575", -- 5% lighter than grey
  light_grey = "#cccccc",
  red = "#ff5370",
  baby_pink = "#f4c2c2",
  pink = "#ff99ff",
  line = "#333333", -- 15% lighter than black
  green = "#6ef76e",
  vibrant_green = "#6ef76e",
  nord_blue = "#3399ff",
  blue = "#0088ff",
  seablue = "#009cd4",
  yellow = "#f2f20d",
  sun = "#f3f320", -- 8% lighter than yellow
  purple = "#a64dff",
  dark_purple = "#800df2",
  teal = "#008683",
  orange = "#ff9900",
  cyan = "#0df2f2",
  statusline_bg = "#000000",
  lightbg = "#000000",
  pmenu_bg = "#7ddac5",
  folder_bg = "#6ef76e"
}

-- check https://github.com/chriskempson/base16/blob/master/styling.md for more info
M.base_16 = {
  base00 = "#000000",
  base01 = "#0f0f0f",
  base02 = "#181818",
  base03 = "#202020",
  base04 = "#303030",
  base05 = "#d0d0d0",
  base06 = "#e7e7e7",
  base07 = "#f2f2f2",
  base08 = "#0088ff",
  base09 = "#ff9900",
  base0A = "#f3f320",
  base0B = "#6ef76e",
  base0C = "#e26c7c",
  base0D = "#0088ff",
  base0E = "#a64dff",
  base0F = "#ffffff"
}

-- set the theme type whether is dark or light
M.type = "dark" -- "or light"

-- this will be later used for users to override your theme table from chadrc
M = require("base46").override_theme(M, "sunny")

return M
