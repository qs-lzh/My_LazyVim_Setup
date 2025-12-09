-- <leader>e to use auto-close floating(dropdown) tree
-- <leader>E to use sidebar tree not automatically close
return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    dashboard = { enabled = false },
    explorer = {},
    picker = {
      sources = {
        explorer = {
          auto_close = true,
          layout = {
            preset = "dropdown",
          },
        },
      },
    },
  },
  keys = {
    {
      "<leader>e",
      function()
        Snacks.picker.explorer({
          auto_close = true,
          layout = {
            preset = "dropdown",
          },
        })
      end,
    },
    {
      "<leader>E",
      function()
        Snacks.picker.explorer({
          auto_close = false,
          layout = {
            preset = "sidebar",
          },
        })
      end,
    },
  },
}
