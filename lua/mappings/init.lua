local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = ' '

-- Standard stuff
map('n', '<leader>fn', "<cmd>enew<cr>", opts)
map('n', '<leader>c', "<cmd>bdelete<cr>", opts)

-- Navigate buffers
map('n', '<S-l>', "<cmd>BufferLineCycleNext<cr>", opts) 
map('n', '<S-h>', "<cmd>BufferLineCyclePrev<cr>", opts) 
map('n', '<leader>ff', ":Telescope find_files<CR>", opts)
map('n', '<leader>fw', ":Telescope live_grep<CR>", opts)
map('i', "jk", "<C-\\><C-n>", opts) 


-- Diagnostics
