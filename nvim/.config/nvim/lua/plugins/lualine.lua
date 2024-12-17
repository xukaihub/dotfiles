return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    opts.sections = opts.sections or {}
    opts.sections.lualine_c = {
      {
        "filename",
        path = 1,       -- 0 = 文件名, 1 = 相对路径, 2 = 绝对路径
        shorting_target = 0, -- 设置为 0 表示不截断路径
      },
    }
  end,
}

