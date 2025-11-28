-- install this plugin, and in ~/.config/nvim/init.lua, set <F5> to
-- replace instruction ":RunFile<CR>" which is defined by this plugin
return {
  "CRAG666/code_runner.nvim",
  opts = {},
  config = function()
    require("code_runner").setup({
      filetype = {
        python = "python3 -u",
        go = "go run",
        javascript = "node",
        typescript = "ts-node",
      },
    })
  end,
}
