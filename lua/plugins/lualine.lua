-- cover the default of lualine.nvim in Lazyvim
-- change it to show the path of file instead of only filename
return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    -- 覆盖 lualine 的 sections 配置
    opts.sections.lualine_c = {
      {
        "filename",
        path = 2, -- 0 = 文件名, 1 = 相对路径, 2 = 绝对路径
      },
    }
    return opts
  end,
}
