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
  vim.cmd()
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

-- set HJKL to move cursor
local map = vim.keymap.set
local opts = { noremap = true, silent = true }
-- 其中的一些映射需要延迟执行，以等待其他插件的快捷键全部加载完再覆盖，为了方便，全部延迟执行
vim.api.nvim_create_autocmd("User", {
  pattern = "VeryLazy",
  callback = function()
    -- in normal mode
    pcall(vim.keymap.del, "n", "H")
    vim.keymap.set("n", "H", "^", { desc = "start of line" })
    pcall(vim.keymap.del, "n", "J")
    vim.keymap.set("n", "J", "25j", { desc = "25 lines down" })
    pcall(vim.keymap.del, "n", "K")
    vim.keymap.set("n", "K", "25k", { desc = "25 rows up" })
    pcall(vim.keymap.del, "n", "L")
    vim.keymap.set("n", "L", "$", { desc = "end of line" })
  end,
})
