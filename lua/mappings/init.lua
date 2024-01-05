local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local Terminal = require("toggleterm.terminal").Terminal

local terminals = {}

vim.g.mapleader = " "

-- Standard stuff
map("n", "<leader>fn", "<cmd>enew<cr>", opts)
map("n", "<leader>c", "<cmd>bdelete<cr>", opts)

-- Navigate
map("n", "<leader>e", "<cmd>lua require('harpoon.mark').add_file()<cr>", opts)
map("n", "<leader>a", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", opts)
map("n", "<S-h>", "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", opts)
map("n", "<S-j>", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", opts)
map("n", "<S-k>", "<cmd>lua require('harpoon.ui').nav_file(3)<cr>", opts)
map("n", "<S-l>", "<cmd>lua require('harpoon.ui').nav_file(4)<cr>", opts)

map("n", "<leader>o", ":Explore<CR>", opts)
-- map("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>", opts)

map("n", "<leader>ff", ":Telescope find_files<CR>", opts)
map("n", "<leader>fw", ":Telescope live_grep<CR>", opts)
map("n", "<leader>fg", ":Telescope git_files<CR>", opts)
map("i", "jk", "<C-\\><C-n>", opts)
map("i", "jj", "<C-\\><C-n>", opts)

-- Terminal
map("n", "<leader>gg", "<cmd>lua _lazygit_toggle()<cr>", opts)
map("n", "<leader>fm", "<cmd>lua _lazyfivem_toggle()<cr>", opts)
map("n", "<C-\\>", "<cmd>ToggleTerm<cr>", opts)
map("n", "<leader>th", "<cmd>ToggleTerm size-10 direction=horizontal<cr>", opts)
map("n", "<leader>tf", "<cmd>ToggleTerm direction=float<cr>", opts)

map("t", "<esc>", "<C-\\><C-n>", opts)

-- LSP Mappings
map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", opts)
map("n", "gr", "<cmd>lua vim.lsp.buf.references()<cr>", opts)
map("n", "gl", "<cmd>lua vim.diagnostic.open_float()<cr>", opts)
map("n", "gh", "<cmd>lua vim.lsp.buf.hover()<cr>", opts)

-- Smart Splits
map("n", "<C-h>", "<cmd>lua require('smart-splits').move_cursor_left()<cr>", opts)
map("n", "<C-j>", "<cmd>lua require('smart-splits').move_cursor_down()<cr>", opts)
map("n", "<C-k>", "<cmd>lua require('smart-splits').move_cursor_up()<cr>", opts)
map("n", "<C-l>", "<cmd>lua require('smart-splits').move_cursor_right()<cr>", opts)

map("n", "<leader><leader>k", "<cmd>SmartResizeUp<cr>", opts)
map("n", "<leader><leader>j", "<cmd>SmartResizeDown<cr>", opts)
map("n", "<leader><leader>h", "<cmd>SmartResizeLeft<cr>", opts)
map("n", "<leader><leader>l", "<cmd>SmartResizeRight<cr>", opts)
-- Nvim tree

-- Lazygit stuff
local lazygit = Terminal:new({
	cmd = "lazygit",
	dir = "git_dir",
	direction = "float",
	count = 10,
	float_opts = {
		border = "double",
	},
	-- function to run on opening the terminal
	on_open = function(term)
		vim.cmd("startinsert!")
		vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", { noremap = true, silent = true })
	end,
	-- function to run on closing the terminal
	on_close = function(term)
		vim.cmd("Closing terminal")
	end,
})

function _lazygit_toggle()
	lazygit:toggle()
end

local lazyfivem = Terminal:new({
	cmd = "lazyfivem",
	direction = "float",
	count = 15,
	float = {
		border = "double",
	},
})

function _lazyfivem_toggle()
	lazyfivem:toggle()
end
