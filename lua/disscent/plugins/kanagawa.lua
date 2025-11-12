
return {
  "rebelot/kanagawa.nvim",
  config = function()
    vim.api.nvim_create_user_command("Kanagawa", function()
      require("kanagawa").setup({})
      vim.cmd.colorscheme("kanagawa")
    end, {})

    -- default colorscheme
    vim.cmd("Kanagawa")
  end,
}


