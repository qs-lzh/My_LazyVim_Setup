-- only used for rebind the keymap of hover,
-- failed to rebind in any way but this
return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      -- 调用 LazyVim 内置的工具函数，获取默认键位表
      local keys = require("lazyvim.plugins.lsp.keymaps").get()

      -- delete the default K for hover
      keys[#keys + 1] = { "K", false }
      -- rebind hover to gk
      keys[#keys + 1] = { "gk", vim.lsp.buf.hover, desc = "LSP Hover Documentation" }

      opts.keys = keys
    end,
  },
}
