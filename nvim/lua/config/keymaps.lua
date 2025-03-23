-- Hide search results when pressing Escape.
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Exit insert mode.
vim.keymap.set("i", "jj", "<ESC>")

-- Make 'Y' yank till the end of the line, much like 'D' deletes till the end.
vim.keymap.set("n", "Y", "y$")

-- Move selected lines up/down in visual mode.
-- vim.keymap.set("x", "K", ":move '<-2<cr>gv-gv")
-- vim.keymap.set("x", "J", ":move '>+1<cr>gv-gv")

--  Use CTRL+<hjkl> to switch between windows.
--  See `:help wincmd` for a list of all window commands.
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Focus left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Focus right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Focus lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Focus upper window" })

-- Focus previous/next tab
vim.keymap.set("n", "<C-p>", "<Esc>:tabp<CR>", { desc = "Focus [p]revious tab" })
vim.keymap.set("n", "<C-n>", "<Esc>:tabn<CR>", { desc = "Focus [n]ext tab" })

-- Open parent directory in Oil
vim.keymap.set("n", "-", "<cmd>Oil --float<CR>", { desc = "Oil: open parent directory" })

-- Treesitter inspect
vim.keymap.set("n", "<Leader>i", "<cmd>Inspect<CR>", { desc = "Treesitter [I]nspect" })
vim.keymap.set("n", "<Leader>it", "<cmd>InspectTree<CR>", { desc = "Treesitter [I]nspect[T]ree" })

-- LSP
vim.keymap.set("n", "<leader>df", function()
  vim.diagnostic.open_float()
end, { desc = "Open [d]iagnostics in [f]loat" })

-- Code formatting
vim.keymap.set("n", "<leader>cf", function()
  require("conform").format()
end, { desc = "[c]ode [f]ormat" })
