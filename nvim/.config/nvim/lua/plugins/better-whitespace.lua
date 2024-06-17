return {
  {
    "ntpeters/vim-better-whitespace",
    keys = {
      { "<leader>tw", " :ToggleWhitespace<cr>", mode = "n", noremap = true, silent = true, desc = "Toggle trailing whitespace" },
      { "<leader>tf", " :StripWhitespace<cr>", mode = "n", noremap = true, silent = true, desc = "Fix trailing whitespace" },
    } ,
  },
}
