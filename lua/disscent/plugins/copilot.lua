return {
  "zbirenbaum/copilot.lua",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      suggestion = { enabled = true },
      panel = { enabled = false },
    })

    -- keymap
    vim.keymap.set("i", "<C-l>", function()
      require("copilot.suggestion").accept()
    end, { desc = "Accept Copilot Suggestion" })
  end,
}

