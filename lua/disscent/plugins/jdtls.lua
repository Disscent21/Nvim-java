
return {
  "mfussenegger/nvim-jdtls",
  ft = { "java" },
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "java",
      callback = function()
        require("disscent.jdtls-setup"):setup()
      end,
    })
  end,
}

