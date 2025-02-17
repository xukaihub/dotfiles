-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Toggle list mode
vim.api.nvim_set_keymap('n', '<leader>tl', ':lua if vim.opt.list:get() then vim.cmd("set nolist") else vim.cmd("set list") end<CR>', { noremap = true, silent = true, desc = 'Toggle list mode' })

-- Toggle relative line number
vim.api.nvim_set_keymap('n', '<leader>[', ':set nu<CR>:set relativenumber<CR>', { noremap = true, silent = true, desc = 'Set relative line numbers on' })
vim.api.nvim_set_keymap('n', '<leader>]', ':set nonu<CR>:set norelativenumber<CR>', { noremap = true, silent = true, desc = 'Set relative line numbers off' })

-- Switch to next buffer
vim.api.nvim_set_keymap('n', '<Tab>', ':bnext<CR>', { noremap = true, silent = true, desc = 'Next buffer' })

-- Switch to previous buffer
vim.api.nvim_set_keymap('n', '<S-Tab>', ':bprevious<CR>', { noremap = true, silent = true, desc = 'Previous buffer' })

-- Ctrl-p to open fuzzy finder
-- vim.api.nvim_set_keymap('n', '<C-p>', ':FzfLua files<CR>', { noremap = true, silent = true, desc = 'Open fuzzy finder' })
