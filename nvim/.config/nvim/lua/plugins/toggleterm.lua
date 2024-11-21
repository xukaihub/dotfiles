return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup({
        size = 20,
        open_mapping = [[<c-t>]], -- Key binding to toggle the terminal
        hide_numbers = true,
        shade_terminals = true,
        shading_factor = 2,
        start_in_insert = true,
        insert_mappings = true,
        persist_size = true,
        direction = "float",
        close_on_exit = true,
        shell = vim.o.shell,
        float_opts = {
          border = "curved", -- Options: 'single', 'double', 'shadow', 'curved'
          width = 120,
          height = 60,
          winblend = 3,
        },
      })
    end,
  },
}

