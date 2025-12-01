local plugins = {
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "eslint-lsp",
        "prettierd",
        "tailwindcss-language-server",
        "typescript-language-server",
        "gopls",
        "gofumpt",
        "gomodifytags",
      },
    },
  },
  {
    "nvimtools/none-ls.nvim",
    event = "VeryLazy",
    opts = function()
      return require "custom.configs.null-ls"
    end,
    config = function(_, opts)
      require("null-ls").setup(opts)
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    ft = {"javascript", "javascriptreact", "typescript", "typescriptreact"},
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function()
      local opts = require "plugins.configs.treesitter"
      opts.ensure_installed = {
        "lua",
        "go",
        "javascript",
        "typescript",
        "tsx",
      }
      return opts
    end,
  },
  {
    "Mofiqul/vscode.nvim",
    lazy = true,         -- or true if you want lazy loading
    config = function()
      require("vscode").setup({
        -- your preferred options here
        transparent = true,
        italic_comments = true,
        -- etc.
      })
      vim.cmd.colorscheme("vscode")  -- apply the theme
    end,
  },
  {
    "Civitasv/cmake-tools.nvim",
    config = function()
        require("cmake-tools").setup({})
    end
  },
  {
  "olexsmir/gopher.nvim",
  ft = "go",
  config = function(_, opts)
    require("gopher").setup(opts)
  end,
  build = function()
    vim.cmd [[GoInstallDeps]]
  end,
  },

}
return plugins
