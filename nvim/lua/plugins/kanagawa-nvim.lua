-- Colorscheme
-- See https://github.com/rebelot/kanagawa.nvim
return {
"rebelot/kanagawa.nvim",
config = function()
require('kanagawa').setup({
    compile = false,             -- Enable compiling the colorscheme.
    undercurl = true,            -- Enable undercurls.
    commentStyle = { italic = true },
    functionStyle = {},
    keywordStyle = { italic = true},
    statementStyle = { bold = true },
    typeStyle = {},
    transparent = true,         -- Do not set background color.
    dimInactive = false,         -- Dim inactive window `:h hl-NormalNC`.
    terminalColors = true,       -- Define vim.g.terminal_color_{0,17}.
    colors = {                   -- Add/modify theme and palette colors.
        palette = {},
        theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
    },
    overrides = function(colors) -- Add/modify highlights.
        return {
          ["@markup.link.url.markdown_inline"]={link="Special"}, -- (link url)
          ["@markup.link.label.markdown_inline"]={link="WarningMsg"}, -- [link label]
          ["@markup.italic.markdown_inline"]={link="Exception"}, -- *italic*
          ["@markup.raw.markdown_inline"]={link="String"}, -- `code`
          ["@markup.list.markdown"]={link="Function"}, -- + list
          ["@markup.quote.markdown"]={link="Error"}, -- > blockquote
          ["@markup.list.checked.markdown"]={link="WarningMsg"}, -- [x]
        }
    end,
    theme = "wave",              -- Load "wave" theme when 'background' option is not set.
    background = {               -- Map the value of 'background' option to a theme.
        dark = "wave",           -- Try "dragon"! (Default is "wave").
        light = "lotus"
    },

})

-- setup must be called before loading
vim.cmd("colorscheme kanagawa")
end,
build=function()

  vim.cmd("KanagawaCompile")
end,
}


