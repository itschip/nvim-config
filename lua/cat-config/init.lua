vim.g.catppuccin_flavour = "macchiato" -- latte, frappe, macchiato, mocha

require("catppuccin").setup({
  integrations = {
    telescope = true,
  }
})

vim.cmd [[colorscheme catppuccin]]
