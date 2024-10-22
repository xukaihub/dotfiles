return {
  -- add onedark
  {
    "navarasu/onedark.nvim",
    config = function()
      require('onedark').setup {
        style = 'dark',  -- style = 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'
      }
      require('onedark').load()
    end,
  },

  -- Configure LazyVim to load onedark
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
    },
  }
}
