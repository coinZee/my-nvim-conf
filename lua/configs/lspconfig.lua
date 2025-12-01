local on_attach = require("nvchad.configs.lspconfig").on_attach
local capabilities = require("nvchad.configs.lspconfig").capabilities

-- 1. Setup default servers (using the new list format if supported)
local servers = { "html", "cssls", "ts_ls", "tailwindcss", "clangd", "pyright", "rust-analyzer", "neocmakelsp" }

for _, server in ipairs(servers) do
  -- If vim.lsp.enable works for you, you can use a loop like this:
  -- Note: We set defaults if they aren't already set
  vim.lsp.config[server] = vim.lsp.config[server] or {}
  vim.lsp.config[server].on_attach = on_attach
  vim.lsp.config[server].capabilities = capabilities
  vim.lsp.enable(server)
end

-- 2. Setup GOPLS specifically for "Pretty" formatting
vim.lsp.config.gopls = {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = {"gopls"},
  settings = {
    gopls = {
      gofumpt = true, -- <--- The magic setting for pretty formatting
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
    },
  },
}

vim.lsp.enable("gopls")
