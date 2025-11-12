
return {
  "neovim/nvim-lspconfig",
  config = function()
    -- this runs after server attaches
    vim.api.nvim_create_autocmd("LspAttach", {
      callback = function(ev)
        local opts = { buffer = ev.buf }

        vim.keymap.set("n", "gd", function()
          vim.lsp.buf.definition()
        end, opts)

        vim.keymap.set("n", "gD", function()
          vim.lsp.buf.declaration()
        end, opts)

        vim.keymap.set("n", "gr", function()
          vim.lsp.buf.references()
        end, opts)

        vim.keymap.set("n", "gi", function()
          vim.lsp.buf.implementation()
        end, opts)

        vim.keymap.set("n", "K", function()
          vim.lsp.buf.hover()
        end, opts)

        vim.keymap.set({ "n", "v" }, "<leader>ca", function()
          vim.lsp.buf.code_action()
        end, opts)

        vim.keymap.set("n", "<leader>rn", function()
          vim.lsp.buf.rename()
        end, opts)

        vim.keymap.set("n", "<leader>f", function()
          vim.lsp.buf.format()
        end, opts)
      end,
    })
  end,
}

