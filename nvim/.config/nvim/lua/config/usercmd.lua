-- Replace ^Tabs with Spaces
local function replace_tabs_with_spaces()
  local line_count = vim.api.nvim_buf_line_count(0)

  for i = 0, line_count - 1 do
    local line = vim.api.nvim_buf_get_lines(0, i, i + 1, false)[1]
    local leading_tabs = line:match("^\t*")
    if leading_tabs then
      local tab_count = #leading_tabs
      local space_count = tab_count * 4
      local new_line = string.rep(" ", space_count) .. line:sub(tab_count + 1)
      vim.api.nvim_buf_set_lines(0, i, i + 1, false, { new_line })
    end
  end
end

vim.api.nvim_create_user_command("ReplaceTabsWithSpaces", replace_tabs_with_spaces, {})
vim.api.nvim_set_keymap(
  "n",
  "<leader>rts",
  ":ReplaceTabsWithSpaces<CR>",
  { noremap = true, silent = true, desc = "Replace tabs with spaces" }
)

-- Replace ^Spaces with Tabs
local function replace_spaces_with_tabs()
  local line_count = vim.api.nvim_buf_line_count(0)

  for i = 0, line_count - 1 do
    local line = vim.api.nvim_buf_get_lines(0, i, i + 1, false)[1]
    local leading_spaces = line:match("^%s*")
    if leading_spaces and #leading_spaces >= 4 then
      local space_count = #leading_spaces
      local tab_count = math.floor(space_count / 4)
      local remaining_spaces = space_count % 4
      local new_line = string.rep("\t", tab_count) .. string.rep(" ", remaining_spaces) .. line:sub(space_count + 1)
      vim.api.nvim_buf_set_lines(0, i, i + 1, false, { new_line })
    end
  end
end

vim.api.nvim_create_user_command("ReplaceSpacesWithTabs", replace_spaces_with_tabs, {})
vim.api.nvim_set_keymap(
  "n",
  "<leader>rst",
  ":ReplaceSpacesWithTabs<CR>",
  { noremap = true, silent = true, desc = "Replace spaces with tabs" }
)

-- Add some config written by vimscript
vim.cmd('source ~/.config/nvim/vimrc/vimrc')
