-- ~/.config/nvim/after/ftplugin/go.lua

-- 1. Format on save (Runs gofumpt via null-ls)
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
    vim.lsp.buf.format({ 
      async = false,
      filter = function(client)
        return client.name == "null-ls" or client.name == "gopls"
      end
    })
  end,
})

-- 2. Organize Imports (Fixed for Neovim 0.10+)
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
    -- THE FIX: We explicitly pass nil (current window) and "utf-16"
    local params = vim.lsp.util.make_range_params(nil, "utf-16")
    
    params.context = {only = {"source.organizeImports"}}
    local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params, 3000)
    for cid, res in pairs(result or {}) do
      for _, r in pairs(res.result or {}) do
        if r.edit then
          local enc = (vim.lsp.get_client_by_id(cid) or {}).offset_encoding or "utf-16"
          vim.lsp.util.apply_workspace_edit(r.edit, enc)
        end
      end
    end
  end,
})
