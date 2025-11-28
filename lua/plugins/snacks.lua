-- disable the start page of Lazyvim in snacks.nvim
return {
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = { enabled = false }, -- 禁用欢迎页
    },
  },
}
