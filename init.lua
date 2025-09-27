-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
--require("smear_cursor").enabled = true

--add language server here, no other configuration needed, as long as you have installed the language servers on your computer.
--the reason is that LazyVim have set some lsp, cmp and other plugins by default.
vim.lsp.enable("pyright")
vim.lsp.enable("gopls")

--select colorscheme
vim.cmd.colorscheme("onedark")

--keyboard map configuration here
vim.keymap.set("n", "<F5>", ":RunCode<CR>", { noremap = true, silent = false })

--keyboard map for telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
vim.keymap.set("n", "<leader>f/", builtin.current_buffer_fuzzy_find, { desc = "Search in current buffer" })

-- keyboard map for open current HTML file with browser
vim.keymap.set("n", "<F6>", function()
  local file = vim.fn.expand("%:p") -- 获取当前文件绝对路径
  -- macOS
  vim.cmd("!open " .. file)
  -- Linux
  -- vim.cmd("!xdg-open " .. file)
  -- Windows
  -- vim.cmd("!start " .. file)
end, { noremap = true, silent = true, desc = "Open HTML in browser" })

vim.o.cursorline = true
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#44475a" })

vim.opt.statusline = "%f"

-- show filename ont the top of each buffer
vim.o.winbar = "%t"
