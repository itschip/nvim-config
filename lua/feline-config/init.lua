local ctp_feline = require('catppuccin.groups.integrations.feline')
require("feline").setup({
  components = ctp_feline.get(),
  highlight_reset_triggers = {},
  force_inactive = {
    filetypes = {
      "packer",
      "dap-repl",
      "dapui_scopes",
      "dapui_stacks",
      "dapui_watches",
      "dapui_repl",
      "LspTrouble",
      "qf",
      "help",
    },
    buftypes = { "terminal" },
    bufnames = {},
  },
  disable = {
    filetypes = {
      "dashboard",
      "startify",
    },
  },
})
