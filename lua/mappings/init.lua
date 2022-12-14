local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local Terminal = require("toggleterm.terminal").Terminal

local terminals = {}

vim.g.mapleader = " "

-- Standard stuff
map("n", "<leader>fn", "<cmd>enew<cr>", opts)
map("n", "<leader>c", "<cmd>bdelete<cr>", opts)

-- Navigate buffers
map("n", "<S-l>", "<cmd>BufferLineCycleNext<cr>", opts)
map("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>", opts)
map("n", "<leader>ff", ":Telescope find_files previewer=false<CR>", opts)
map("n", "<leader>fw", ":Telescope live_grep<CR>", opts)
map("n", "<leader>f", ":Telescope git_files previewer=false<CR>", opts)
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

map("n", "<C-Up>", "<cmd>lua require('smart-splits').resize_up()<cr>", opts)
map("n", "<C-Down>", "<cmd>lua require('smart-splits').resize_down()<cr>", opts)
map("n", "<C-Left>", "<cmd>lua require('smart-splits').resize_left()<cr>", opts)
map("n", "<C-Right>", "<cmd>lua require('smart-splits').resize_right()<cr>", opts)

-- Nvim tree
map("n", "<leader>o", ":Explore<CR>", opts)
map("n", "<leader>e", ":NvimTreeClose<CR>", opts)

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
