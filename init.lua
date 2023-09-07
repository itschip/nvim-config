local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("settings")
require("mappings")
require("lazy-config")
require("mason-config")
require("cmp-config")
require("null-ls-config")
require("smart-splits-config")
require("treesitter-config")
require("telescope-config")
require("lualine-config")
require("zenbones-config")
