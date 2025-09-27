return {
  "olimorris/onedarkpro.nvim",
  priority = 1000,
  config = function()
    require("onedarkpro").setup({
      options = {
        transparency = true,
      },
      highlights = {
        Cursor = { fg = "#FFFFFF", bg = "#FFFFFF" },
      },
    })
  end,
}
