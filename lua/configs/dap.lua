local dap = require("dap")

-- -----------------------
-- BREAKPOINT SIGNS
-- -----------------------
vim.fn.sign_define("DapBreakpoint", {
  text = "●",
  texthl = "DiagnosticError",
})

vim.fn.sign_define("DapStopped", {
  text = "▶",
  texthl = "DiagnosticWarn",
})

-- -----------------------
-- ADAPTERS
-- -----------------------
dap.adapters.codelldb = {
  type = "server",
  port = "${port}",
  executable = {
    command = vim.fn.stdpath("data") .. "/mason/bin/codelldb",
    args = { "--port", "${port}" },
  },
}

-- -----------------------
-- CONFIGURATIONS
-- -----------------------
dap.configurations.cpp = {
  {
    name = "Launch executable",
    type = "codelldb",
    request = "launch",
    program = function()
      return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
    end,
    cwd = "${workspaceFolder}",
    stopOnEntry = false,
  },
}

-- Reuse same config for C and Rust
dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp

-- -----------------------
-- AUTO-OPEN REPL
-- -----------------------
dap.listeners.after.event_initialized["repl_open"] = function()
  dap.repl.open()
end

-- -----------------------
-- LEADER KEYMAPS (no F-keys)
-- -----------------------
local map = vim.keymap.set

map("n", "<leader>dc", function() require("dap").continue() end, { desc = "DAP: continue / start" })
map("n", "<leader>dn", function() require("dap").step_over() end, { desc = "DAP: step over" })
map("n", "<leader>di", function() require("dap").step_into() end, { desc = "DAP: step into" })
map("n", "<leader>do", function() require("dap").step_out() end, { desc = "DAP: step out" })
map("n", "<leader>db", function() require("dap").toggle_breakpoint() end, { desc = "DAP: toggle breakpoint" })
map("n", "<leader>dB", function() require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: ")) end, { desc = "DAP: conditional breakpoint" })
map("n", "<leader>dr", function() require("dap").repl.open() end, { desc = "DAP: open REPL" })
map("n", "<leader>dl", function() require("dap").run_last() end, { desc = "DAP: run last" })

-- Optional: toggle dapui if installed
map("n", "<leader>du", function()
  local ok, dapui = pcall(require, "dapui")
  if ok then dapui.toggle() end
end, { desc = "DAP UI toggle" })
