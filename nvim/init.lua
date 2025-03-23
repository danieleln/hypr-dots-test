-- Sources:
-- Mr Jackob - Neovim from scratch pt.1: https://youtu.be/g1gyYttzxcI?si=niDYrTdpsxGGO071
-- Mr Jackob - Neovim from scratch pt.2: https://youtu.be/E4qXZv34NQQ?si=XMbc9VsqKncmbHiA
-- Load custom options from .lua/config/options.lua
require("config.options")

-- Load the package manager from .lua/config/lazy-nvim.lua
require("config.lazy-nvim")

-- Load custom keymaps from .lua/config/keymaps.lua
require("config.keymaps")

-- Load autocommands from .lua/config/autocmds.lua
require("config.autocmds")

-- Enable the showkeys plugin (see ./lua/plugins/showkeys.lua)
vim.cmd("ShowkeysToggle")
