local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true, nowait = true }
local Terminal = require('toggleterm.terminal').Terminal

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
map('i', "jj", "<C-\\><C-n>", opts) 

-- Terminal
map('n', '<leader>gg', '<cmd>lua _lazygit_toggle()<cr>', opts)
map('n', "<C-\\>", "<cmd>ToggleTerm<cr>", opts)
map('n', "<leader>th", "<cmd>ToggleTerm size-10 direction=horizontal<cr>", opts)

map('t', "<esc>", "<C-\\><C-n>", opts)



-- Lazygit stuff
local lazygit = Terminal:new({
  cmd = "lazygit",
  dir = "git_dir",
  direction = "float",
  float_opts = {
    border = "double",
  },
  -- function to run on opening the terminal
  on_open = function(term)
    vim.cmd("startinsert!")
    vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", {noremap = true, silent = true})
  end,
  -- function to run on closing the terminal
  on_close = function(term)
    vim.cmd("Closing terminal")
  end,
})

function _lazygit_toggle()
  lazygit:toggle()
end
