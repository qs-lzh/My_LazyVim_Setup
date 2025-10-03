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

-- local dap = require("dap")
-- -- Leader 风格调试快捷键
-- vim.keymap.set("n", "<F6>", dap.continue, { desc = "DAP Continue" })
-- vim.keymap.set("n", "<leader>du", dap.step_over, { desc = "DAP Step Over" })
-- vim.keymap.set("n", "<leader>di", dap.step_into, { desc = "DAP Step Into" })
-- vim.keymap.set("n", "<leader>do", dap.step_out, { desc = "DAP Step Out" })
-- vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, { desc = "DAP Toggle Breakpoint" })
-- vim.keymap.set("n", "<leader>dB", function()
--   dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
-- end, { desc = "DAP Conditional Breakpoint" })
-- vim.keymap.set("n", "<leader>dr", dap.repl.open, { desc = "DAP REPL" })
-- vim.keymap.set("n", "<leader>dl", dap.run_last, { desc = "DAP Run Last" })

local map = vim.keymap.set
local opts = { noremap = true, silent = true }
-- Leader + j/k → 十行上下移动
map("n", "<Leader>j", "10j", opts)
map("n", "<Leader>k", "10k", opts)
-- Leader + h/l → 行首行尾
map("n", "<Leader>h", "^", opts) -- 行首第一个非空字符
-- 可视模式也生效（可选）
map("v", "<Leader>j", "10j", opts)
map("v", "<Leader>k", "10k", opts)
map("v", "<Leader>h", "^", opts)
map("v", "<Leader>l", "$", opts)
-- map("n", "<Leader>l", "$", "") 需要延迟执行
vim.api.nvim_create_autocmd("User", {
  pattern = "VeryLazy",
  callback = function()
    pcall(vim.keymap.del, "n", "<leader>l")
    vim.keymap.set("n", "<leader>l", "$", { desc = "行尾" })
  end,
})
