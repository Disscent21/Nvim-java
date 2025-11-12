return {
  "hachy/eva01.vim",
  config = function()
    vim.api.nvim_create_user_command("Eva", function()
      vim.cmd.colorscheme("eva01")
    end, {})

    vim.api.nvim_create_user_command("Eva01LCL", function()
      vim.cmd.colorscheme("eva01-LCL")
    end, {})
  end,
}


