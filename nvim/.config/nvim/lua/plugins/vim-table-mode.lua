return {
    "dhruvasagar/vim-table-mode",
    keys = {
        { "<leader>tm", ":TableModeToggle<CR>", desc = "Toggle table mode" },
    },

    config = function()
        vim.g.table_mode_corner = "|"
    end
}
