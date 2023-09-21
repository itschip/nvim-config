local set = vim.opt

vim.g.airline_theme = "base16_gruvbox_dark_hard"

set.expandtab = true
set.smarttab = true
set.shiftwidth = 4
set.tabstop = 4
set.guicursor = ""

set.hlsearch = true
set.incsearch = true
set.ignorecase = true
set.smartcase = true

set.splitbelow = true
set.splitright = true
set.wrap = false
set.scrolloff = 10
set.fileencoding = "utf-8"
set.termguicolors = true

set.relativenumber = true
set.number = true
set.cursorline = true

set.hidden = true

set.clipboard = "unnamed"

--vim.opt.list = true
--vim.opt.listchars:append("space:⋅")

vim.opt.list = true
vim.opt.listchars:append("space:⋅")

require("indent_blankline").setup({
	space_char_blankline = " ",
	show_current_context = true,
	show_current_context_start = true,
})
