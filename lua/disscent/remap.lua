vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)


vim.keymap.set("x", "<leader>p", [["_dP]])
-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")
-- next greatest remap ever : asbjornHaland
local transparent = true

function ToggleTransparency()
  transparent = not transparent

  -- clear highlights first
  vim.cmd("hi clear")

  -- setup again
  require("kanagawa").setup({
    transparent = transparent,
  })

  -- set colorscheme again
  vim.cmd("colorscheme kanagawa")
end

vim.keymap.set("n", "<leader>tt", ToggleTransparency, { desc = "toggle bg transparency" })



vim.keymap.set("n", "<leader>D", function()
  local file = vim.fn.expand("%")
  if file ~= "" then
    vim.fn.system({ "rm", file })
    print("Deleted: " .. file)
    vim.cmd("bdelete!") -- close buffer
  else
    print("No file to delete")
  end
end, { desc = "Delete current file" })
local java = require("disscent.java")
vim.keymap.set("n", "<leader>r", java.run_java_floating)

