-- Shows pressed keys.
-- See https://github.com/nvzone/showkeys
return {
  "nvzone/showkeys",
  opts= {
    timeout = 3, -- in secs
    maxkeys = 5, -- Number of keys shown.
    show_count = true,

    -- :h nvim_open_win params
    winopts = {
      -- focusable = false,
      relative = "editor",
      style = "minimal",
      border = "single",
      height = 1,
      row = 1,
      col = 0,
      zindex = 100,
    },

    winhl = "FloatBorder:Comment,Normal:Normal",
    excluded_modes = {}, -- example: {"i"}

    -- bottom-left, bottom-right, bottom-center, top-left, top-right, top-center
    position = "top-right",

    keyformat = {
      ["<BS>"] = "󰁮 ",
      ["<CR>"] = "󰘌",
      ["<Space>"] = "󱁐",
      ["<Up>"] = "󰁝",
      ["<Down>"] = "󰁅",
      ["<Left>"] = "󰁍",
      ["<Right>"] = "󰁔",
      ["<PageUp>"] = "Page 󰁝",
      ["<PageDown>"] = "Page 󰁅",
      ["<M>"] = "Alt",
      ["<C>"] = "Ctrl",
    },
  },
  cmd="ShowkeysToggle",
}
