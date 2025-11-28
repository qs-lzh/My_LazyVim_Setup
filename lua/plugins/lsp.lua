-- only used for rebind the keymap of hover,
-- failed to rebind in any way but this

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ["*"] = {
          keys = {
            { "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", has = "definition", desc = "Go to definition" },
            { "gr", "<cmd>lua vim.lsp.buf.references()<CR>", has = "references", desc = "Find references" },
            { "gk", vim.lsp.buf.hover, desc = "LSP Hover Documentation" },
            { "gT", vim.lsp.buf.type_definition, desc = "LSP Type Definition" },
            { "gD", vim.lsp.buf.declaration, desc = "LSP Declaration" },
            { "<leader>e", vim.diagnostic.open_float, desc = "Show diagnostics" },
          },
        },
      },
    },
  },
}
