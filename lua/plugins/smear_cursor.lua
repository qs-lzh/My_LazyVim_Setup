return {
  "sphamba/smear-cursor.nvim",
  opts = {
    -- if in light mode, use this color, otherwise comment this line out
    -- cursor_color = "#383A42",
    -- if you want color-aware cursor, use this line(i don't like it, because there's too many colors and makes chaos)
    -- cursor_color = "none",

    -- official setting of smooth cursor without smear
    stiffness = 0.5,
    trailing_stiffness = 0.5,
    matrix_pixel_threshold = 0.5,

    -- better drawing the cursor when use transparent background
    -- legacy_computing_symbols_support = true,
  },
}
