-- lua/themes/hazmat.lua
local M = {}

M.base_30 = {
  white = "#DCDCDC", -- Slightly softer white (less glare)
  darker_black = "#141414",
  black = "#1A1A1A",
  black2 = "#1F1F1F",
  one_bg = "#242424",
  one_bg2 = "#2E2E2E",
  one_bg3 = "#363636",
  grey = "#454545",
  grey_fg = "#505050",
  grey_fg2 = "#606060",
  light_grey = "#808080",
  
  -- The "Eye Safe" Yellows
  red = "#EBCB8B",     -- Warning -> Sand/Beige
  baby_pink = "#E5C07B", 
  pink = "#E5C07B",
  line = "#303030",
  
  green = "#D0B060",   -- Success -> Muted Gold
  vibrant_green = "#E0C070",
  
  nord_blue = "#A0A0A0",
  blue = "#C0C0C0",
  
  -- Replaced Neon Gold with "Warm Amber" (The OneDark yellow)
  yellow = "#E5C07B", 
  sun = "#F0C674",     -- Slightly brighter for accents
  orange = "#D19A66",  -- Muted Orange for contrast
  
  teal = "#E5C07B",
  cyan = "#DCDCDC",    -- Keep cyan as white to reduce color noise
  
  dark_purple = "#424242",
  purple = "#E5C07B",
  
  dark_grey_fg = "#757575",
  pmenu_bg = "#1A1A1A",
  folder_bg = "#E5C07B",
}

M.base_16 = {
  base00 = "#121212", -- Background
  base01 = "#1C1C1C",
  base02 = "#262626",
  base03 = "#404040", -- Comments (Dark Grey)
  base04 = "#888888",
  base05 = "#D6D6D6", -- Text (Light Grey)
  base06 = "#E0E0E0",
  base07 = "#FFFFFF",

  -- Variables: "Bright Banana" (Vivid, but not Neon)
  base08 = "#FCE566", 
  
  -- Integers: "Golden Banana" (Slightly deeper)
  base09 = "#F0D35B", 
  
  -- Classes: "Deep Banana" (Solid yellow gold)
  base0A = "#E4C250", 
  
  base0B = "#9E9E9E", -- Strings (Grey - keeps contrast high)
  base0C = "#D6D6D6", -- Support (Grey)
  
  -- Functions: Matches Classes
  base0D = "#E4C250", 
  
  -- Keywords: "Dark Stem" (Dark Gold/Hay)
  -- Saturated enough to not look grey/olive, but dark enough for structure.
  base0E = "#C8A635", 
  
  base0F = "#505050",
}

M.type = "dark"

return M
