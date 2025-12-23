return {
  {
  "Civitasv/cmake-tools.nvim",
  lazy = false,
  opts = {},
  },
  {
    "mfussenegger/nvim-dap",
    config = function()
      require("configs.dap")
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {},
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    dependencies = {
      "williamboman/mason.nvim",
      "mfussenegger/nvim-dap",
    },
    opts = {
      ensure_installed = {
        "codelldb",             -- C/C++/Rust
        "debugpy",              -- Python
        "node-debug2-adapter",  -- JS/TS
      },
      -- THIS IS THE FIX:
      -- We set handlers to empty to disable automatic config injection.
      -- This ensures nvim-dap uses YOUR manual config from configs/dap.lua
      -- instead of trying to use the missing 'cppdbg' adapter.
      handlers = {}, 
    },
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = { 
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio" -- Required for newer versions of dap-ui
    },
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")
      dapui.setup()

      -- Automatically open UI when debugging starts
      dap.listeners.before.attach.dapui_config = function() dapui.open() end
      dap.listeners.before.launch.dapui_config = function() dapui.open() end
      dap.listeners.before.event_terminated.dapui_config = function() dapui.close() end
      dap.listeners.before.exited.dapui_config = function() dapui.close() end
    end,
  }
}
