require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

vim.opt.number = true
vim.opt.relativenumber = true
-- vim.opt.foldmethod = "indent"


map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>T", "<cmd>CodeCompanionChat Toggle<cr>", { desc = "Toggle Code Companion Chat" })
vim.keymap.set("t", "jk", [[<C-\><C-n>]], { noremap = true })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
