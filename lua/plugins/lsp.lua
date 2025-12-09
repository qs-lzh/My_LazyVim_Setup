return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ["*"] = {
          keys = {
            { "gd", "<cmd>lua vim.lsp.buf.definition()<CR>" },
            { "gr", "<cmd>lua vim.lsp.buf.references()<CR>" },
            { "gk", vim.lsp.buf.hover },
            { "gT", vim.lsp.buf.type_definition },
            { "gD", vim.lsp.buf.declaration },
            { "K", false },
          },
        },
      },
    },
  },
}
