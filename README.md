### My LazyVim Setup
>[!]
Please put this under `~/.config/nvim/`

### Color Mode Change
1. in your terminal setting, set dark color for dark mode or light color for light mode and the right transparency
2. in "./init.lua", set to use "onelight"
3. in "./lua/plugins/onedarkpro.lua", set "Cursor = { fg = "#FFFFFF", bg = "#FFFFFF" }" if you use dark mode, otherwise comment it out
4. in "./lua/plugins/smear_cursor.lua", set "cursor_color = "#383A42" if you use light mode, otherwise comment it out
5. one more point, if you use tmux, don't forget to set right color mode. (I use tmux catppuccin theme, so I use "mocha" in dark mode, and "latte" in light mode)
