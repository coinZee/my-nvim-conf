require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

vim.opt.number = true
vim.opt.relativenumber = true
-- vim.opt.foldmethod = "indent"


map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>T", "<cmd>CodeCompanionChat Toggle<cr>", { desc = "Toggle Code Companion Chat" })
map("t", "jk", [[<C-\><C-n>]], { noremap = true })
map("n", "<leader>fc", function() vim.lsp.buf.code_action() end, { desc = "LSP code action" })
map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")


--
--
-- DAP core
vim.keymap.set("n", "<leader>dc", function()
  require("dap").continue()
end, { desc = "DAP continue / start" })

vim.keymap.set("n", "<leader>dn", function()
  require("dap").step_over()
end, { desc = "DAP step over" })

vim.keymap.set("n", "<leader>di", function()
  require("dap").step_into()
end, { desc = "DAP step into" })

vim.keymap.set("n", "<leader>do", function()
  require("dap").step_out()
end, { desc = "DAP step out" })

vim.keymap.set("n", "<leader>db", function()
  require("dap").toggle_breakpoint()
end, { desc = "DAP toggle breakpoint" })

vim.keymap.set("n", "<leader>dB", function()
  require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))
end, { desc = "DAP conditional breakpoint" })

vim.keymap.set("n", "<leader>dr", function()
  require("dap").repl.open()
end, { desc = "DAP REPL" })

vim.keymap.set("n", "<leader>dl", function()
  require("dap").run_last()
end, { desc = "DAP run last" })

vim.keymap.set("n", "<leader>du", function()
  require("dapui").toggle()
end, { desc = "DAP UI toggle" })
