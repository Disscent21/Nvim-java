return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = { "williamboman/mason.nvim", "neovim/nvim-lspconfig" },
  config = function()
    local lspconfig = vim.lsp.config
    local mason_lsp = require("mason-lspconfig")

    mason_lsp.setup({
      ensure_installed = { "lua_ls", "clangd", "jdtls" }, -- even if it’s here, we skip below
      automatic_installation = true,
    })

    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    for _, server_name in ipairs(mason_lsp.get_installed_servers()) do
      if server_name ~= "jdtls" then
        lspconfig(server_name, { capabilities = capabilities })
      end
    end
  end,
}

