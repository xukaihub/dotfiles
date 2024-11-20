-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.autoformat = false                      -- Disable autoformat

vim.opt.mouse = ""                            -- Set mouse off
vim.opt.clipboard = "unnamedplus"             -- Use system clipboard
vim.opt.shiftwidth = 4                        -- Size of an indent
vim.opt.tabstop = 4                           -- Number of spaces tabs count for
vim.opt.smartindent = true                    -- Enable smart indent
vim.opt.expandtab = true                      -- Use spaces instead of tabs
vim.opt.listchars = { tab = "▸ " }            -- Set tab characters
vim.diagnostic.enable(false)                  -- Disable diagnostics

--- Markdown preview plugin options
vim.g.mkdp_open_to_the_world = 1              -- Make Markdown preview server available to others in your network
vim.g.mkdp_echo_preview_url = 1               -- Echo preview page URL in command line when opening preview page
