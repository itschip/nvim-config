require("lazy").setup({
    "kyazdani42/nvim-web-devicons",
    "ThePrimeagen/harpoon",
    "nvim-telescope/telescope.nvim",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    {
        "neovim/nvim-lspconfig",
        dependencies = { 'saghen/blink.cmp' },
    },
    "L3MON4D3/LuaSnip",
    {
      'saghen/blink.cmp',
      -- optional: provides snippets for the snippet source
      --dependencies = 'rafamadriz/friendly-snippets',

      -- use a release tag to download pre-built binaries
      version = '*',
      -- AND/OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
      -- build = 'cargo build --release',
      -- If you use nix, you can build from source using latest nightly rust with:
      -- build = 'nix run .#build-plugin',

      ---@module 'blink.cmp'
      ---@type blink.cmp.Config
      opts = {
        -- 'default' (recommended) for mappings similar to built-in completions (C-y to accept, C-n/C-p for up/down)
        -- 'super-tab' for mappings similar to vscode (tab to accept, arrow keys for up/down)
        -- 'enter' for mappings similar to 'super-tab' but with 'enter' to accept
        --
        -- All presets have the following mappings:
        -- C-space: Open menu or open docs if already open
        -- C-e: Hide menu
        -- C-k: Toggle signature help
        --
        -- See the full "keymap" documentation for information on defining your own keymap.
        keymap = { preset = 'enter' },

        appearance = {
          -- Sets the fallback highlight groups to nvim-cmp's highlight groups
          -- Useful for when your theme doesn't support blink.cmp
          -- Will be removed in a future release
          use_nvim_cmp_as_default = true,
          -- Set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
          -- Adjusts spacing to ensure icons are aligned
          nerd_font_variant = 'mono'
        },

        -- Default list of enabled providers defined so that you can extend it
        -- elsewhere in your config, without redefining it, due to `opts_extend`
        sources = {
          default = { 'lsp', 'path', 'snippets', 'buffer' },
        },

        -- Blink.cmp uses a Rust fuzzy matcher by default for typo resistance and significantly better performance
        -- You may use a lua implementation instead by using `implementation = "lua"` or fallback to the lua implementation,
        -- when the Rust fuzzy matcher is not available, by using `implementation = "prefer_rust"`
        --
        -- See the fuzzy documentation for more information
        fuzzy = { implementation = "prefer_rust_with_warning" }
      },
      opts_extend = { "sources.default" }
    },
    {
        "lewis6991/gitsigns.nvim",
        config = function ()
            require('gitsigns').setup()
        end
    },
    {
        "akinsho/toggleterm.nvim",
        config = function()
            require("toggleterm").setup({
                size = 10,
                open_mapping = [[<c-\>]],
                shading_factor = 2,
                direction = "horizontal",
            })
        end,
    },
    {
        'stevearc/conform.nvim',
        opts = {
            formatters_by_ft = {
                ["go"] = { "gofumpt"},
                ["javascript"] = { "prettierd", stop_after_first = true },
                ["javascriptreact"] = { "prettierd", stop_after_first = true },
                ["typescript"] = { "prettierd", stop_after_first = true },
                ["typescriptreact"] = { "prettierd", stop_after_first = true },
                ["json"] = { "prettierd", stop_after_first = true },
                ["rust"] = { "rustfmt", stop_after_first = true }
            },
        },

    },
    {
        "nvimtools/none-ls.nvim",
        dependencies = {
            "nvimtools/none-ls-extras.nvim",
        },
    },
    {
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup({})
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        lazy = true,
        run = function()
            require("nvim-treesitter.install").update({ with_sync = true })
        end,
    },
    "mrjones2014/smart-splits.nvim",
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        config = function()
            require("ibl").setup({
                indent = {
                    char = "|",
                    tab_char = "|",
                },
            })
        end,
    },
    "nvim-lualine/lualine.nvim",
    "tpope/vim-fugitive",
    {
        "navarasu/onedark.nvim",
        config = function()
            require('onedark').setup {
                style = 'darker'
            }
            require('onedark').load()
        end,
    }
})
