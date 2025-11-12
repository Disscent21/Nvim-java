return {
  "neovim/nvim-lspconfig",
  config = function()
    vim.api.nvim_create_autocmd("BufWritePre", {
      pattern = { "*.c", "*.h", "*.cpp", "*.hpp", "*.cc" },
      callback = function()
        vim.lsp.buf.format()
      end,
    })
  end,
}

