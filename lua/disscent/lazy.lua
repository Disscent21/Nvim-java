-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("lazy").setup({
    -------------------------------------
    -- telescope
    -------------------------------------
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        dependencies = { "nvim-lua/plenary.nvim" },
    },

    -------------------------------------
    -- colorscheme
    -------------------------------------
   -- { "rebelot/kanagawa.nvim" },
    --
    -------------------------------------
    -- treesitter
    -------------------------------------
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
    { "nvim-treesitter/playground" },

    -------------------------------------
    -- others
    -------------------------------------
    { "ThePrimeagen/harpoon" },
    { "windwp/nvim-autopairs" },
    { "zbirenbaum/copilot.lua" },

    { "mbbill/undotree" },
    { "theprimeagen/vim-be-good" },

    -------------------------------------
    -- CMP + LSP + Mason → moved to plugins folder
    -------------------------------------
    { import = "disscent.plugins" },
})

