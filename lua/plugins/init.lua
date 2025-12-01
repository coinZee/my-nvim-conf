return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
-- {
--   "olimorris/codecompanion.nvim",
--   dependencies = {
--     "nvim-lua/plenary.nvim",
--     "nvim-treesitter/nvim-treesitter",
--   },
--   lazy = false,
--   config = true,
--   opts = {
--     log_level = "DEBUG",
--     send_code = false,
--
--     strategies = {
--       chat = {
--         adapter = "ollama",
--       },
--       inline = {
--         adapter = "ollama",
--       },
--     },
--
--     adapters = {
--       -- 1. The "http" nesting is now required for the v18.0.0 update
--       http = {
--         ollama = function()
--           return require("codecompanion.adapters").extend("ollama", {
--             env = {
--               url = "https://jwoncomfy--kimi-k2-thinking-app-openwebui.modal.run",
--             },
--             schema = {
--               model = {
--                 default = "qwen3-coder:30b-a3b-q8_0",
--               },
--             },
--             -- If you need specific headers (like authorization), add them here:
--             -- headers = {
--             --   ["Authorization"] = "Bearer YOUR_TOKEN",
--             -- },
--           })
--         end,
--       },
--     },
--   },
-- },
  {
  'vyfor/cord.nvim',
  build = ':Cord update',
  lazy = false,
  config = true,
  -- opts = {}
}

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
