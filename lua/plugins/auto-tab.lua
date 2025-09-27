--set <Tab> to select completion options in replace of <Enter>
--I tried every solution without blink.cmp in https://github.com/LazyVim/LazyVim/discussions/39, but all failed
return {
  {
    "saghen/blink.cmp",
    opts = function(_, opts)
      opts.keymap = {
        preset = "super-tab",
        ["<Tab>"] = { "select_and_accept" },
        ["<S-Tab>"] = { "select_prev" },
      }
    end,
  },
}
