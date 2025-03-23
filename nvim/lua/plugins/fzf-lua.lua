-- See https://github.com/ibhagwan/fzf-lua
return {
  "ibhagwan/fzf-lua",
  -- or if using mini.icons/mini.nvim
  dependencies = { "echasnovski/mini.icons" },
  opts = {},
  keys = {
    {
      "<leader>fb",
      function()
        require("fzf-lua").buffers()
      end,
      desc = "[f]ind [b]buffers in current project",
    },
    {
      "<leader>ff",
      function()
        require("fzf-lua").files()
      end,
      desc = "[f]ind [f]iles in current project",
    },
    {
      "<leader>fg",
      function()
        require("fzf-lua").live_grep()
      end,
      desc = "[f]ind [g]rep in current project",
    },
    {
      "<leader>fG",
      function()
        require("fzf-lua").lgrep_curbuf()
      end,
      desc = "[f]ind [G]rep in current buffer",
    },
    {
      "<leader>fw",
      function()
        require("fzf-lua").grep_cword()
      end,
      desc = "[f]ind [w]ord under cursor in current project",
    },
    {
      "<leader>fW",
      function()
        require("fzf-lua").grep_cWORD()
      end,
      desc = "[f]ind [W]ORD under cursor in current project",
    },
    {
      "<leader>fh",
      function()
        require("fzf-lua").helptags()
      end,
      desc = "[f]ind [h]elp tags",
    },
    {
      "<leader>fk",
      function()
        require("fzf-lua").keymaps()
      end,
      desc = "[f]ind [k]eymaps",
    },
    {
      "<leader>fd",
      function()
        require("fzf-lua").diagnostics_document()
      end,
      desc = "[f]ind [d]iagnostics",
    },
    {
      "<leader>fc",
      function()
        require("fzf-lua").files({ cwd = vim.fn.stdpath("config") })
      end,
      desc = "[f]ind file in neovim [c]onfig",
    },
  },
}
