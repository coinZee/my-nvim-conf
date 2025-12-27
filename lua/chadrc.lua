-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 



---@type ChadrcConfig
local M = {}

M.base46 = {
	-- theme = "hazmat",
	theme = "monochrome",
  transparency = false,
	-- theme = "obsidian-ember",
	-- theme = "monekai",

  hl_add = {},
  -- hl_override = {
  --   -- 1. CURSOR LINE NUMBER (Your existing one)
  --   CursorLineNr = { fg = "#FCE566", bold = true },
  --
  --   -- 2. POPUP MENU SELECTION (The Fix)
  --   -- This makes the selected item a Yellow Bar with Black Text
  --   PmenuSel = { bg = "#FCE566", fg = "#121212", bold = true },
  --
  --   -- 3. AUTOCOMPLETE MATCHES (Optional safety)
  --   -- Ensures the letters you typed (matched) stay visible inside the yellow bar
  --   CmpItemAbbrMatch = { fg = "#FCE566", bold = true },         -- Unselected match = Yellow
  --   CmpItemAbbrMatchFuzzy = { fg = "#FCE566", bold = true },    -- Unselected fuzzy = Yellow
  --
  --   -- When selected, force the "matched" text to be black too so it doesn't disappear
  --   CmpItemAbbrMatchSel = { fg = "#000000", bold = true }, 
  -- },
  -- hl_override = {},
	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	--    Statement = { fg = "#FFE135" },
	--    Keyword   = { fg = "#FFE135" },
	--    Type      = { fg = "#FFE135" },
	--    ["@keyword"]      = { fg = "#FFE135" },
	--    ["@property"]     = { fg = "#FFE135" },
	--    ["@field"]        = { fg = "#FFE135" },
	--    ["@variable.value"] = { fg = "#FFE135" },
	--    NvimTreeFolderIcon       = { fg = "#FFE135" }, 
	--    NvimTreeFolderName       = { fg = "#FFE135" }, 
	--    NvimTreeOpenedFolderName = { fg = "#FFE135" }, 
	--    NvimTreeRootFolder       = { fg = "#FFE135" }, 
	--    Directory                = { fg = "#FFE135" },
	--    NvimTreeEmptyFolderName  = { fg = "#FFE135" }, 	
	--  },
}


-- M.nvdash = { load_on_startup = true }
-- M.ui = {
--       tabufline = {
--          lazyload = false
--      }
-- }

return M
