-- See `:help vim.opt`.
-- For more options, you can see `:help option-list`.


-- [[ INDENTING AND TABULATIONS ]]

-- Replace tabs with spaces.
vim.opt.expandtab = true

-- Indent size.
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2

-- Handle multiple spaces at the beginning of the line as a tab.
vim.opt.smarttab = true

-- Enable auto indenting.
vim.opt.autoindent = true
vim.opt.smartindent = true

-- Break and indent long lines that don't fit the screen.
vim.opt.breakindent = true


-- [[ TEXT EDITOR OPTIONS ]]

-- Enable relative line numbers.
vim.opt.number = true
vim.opt.relativenumber = true

-- Enable signcolumn.
vim.wo.signcolumn = "yes"

-- Enable mouse mode. Useful for resizing splits!
vim.opt.mouse = "a"

-- Show which line your cursor is on.
vim.opt.cursorline = true

-- Show vertical lines to use as guides for when to wrap the line.
vim.opt.colorcolumn = "70,80"

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 20

-- Open vertical splits to the right and horizontal splits below.
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace in the editor.
--  See `:help 'list'` and `:help 'listchars'`.
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Sync clipboard between OS and Neovim. See `:help 'clipboard'`.
vim.opt.clipboard = "unnamedplus"


-- [[ COMMAND LINE OPTIONS ]]

-- Height of the command line.
vim.opt.cmdheight = 3

-- Hide current mode (insert, normal, etc.).
-- Mini-statusline already shows it!
vim.opt.showmode = false

-- Case-insensitive searching UNLESS \C or capital in search.
vim.opt.ignorecase = true
vim.opt.smartcase = true


-- [[ OTHER OPTIONS ]]

-- Save undo history in a dedicated file.
vim.opt.undofile = true

-- Decrease update time.
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"
