-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

return {
  {
    -- 修改补全键位
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.mapping = vim.tbl_extend("force", opts.mapping or {}, {
        ["<CR>"] = cmp.mapping({
          i = cmp.mapping.confirm({ select = false }),
          c = function(fallback)
            fallback()
          end,
        }),
        ["<Tab>"] = cmp.mapping.confirm({ select = true }),
      })
      return opts
    end,
  },
}
