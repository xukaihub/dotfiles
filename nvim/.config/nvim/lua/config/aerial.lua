return {
  {
    'stevearc/aerial.nvim',
    keys = {
        { "<leader>tb", "<cmd>AerialToggle<cr>", desc = "Toggle Aerial(tagbar)" },
    },
    opts = {},
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
        "nvim-tree/nvim-web-devicons"
    },
  }
}
