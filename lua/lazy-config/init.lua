require("lazy").setup({
    "kyazdani42/nvim-web-devicons",
    "ThePrimeagen/harpoon",
    "nvim-telescope/telescope.nvim",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/nvim-cmp",
    "L3MON4D3/LuaSnip",
    {
        "lewis6991/gitsigns.nvim",
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
                ["javascript"] = { "dprint", { "prettierd", } },
                ["javascriptreact"] = { "dprint", { "prettierd" } },
                ["typescript"] = { "prettierd", stop_after_first = true },
                ["typescriptreact"] = { "prettierd", stop_after_first = true },
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
        "rebelot/kanagawa.nvim",
        config = function()
            require('kanagawa').setup({
                keywordStyle = { italic = false},
                statementStyle = { bold = true },
                colors = { -- add/modify theme and palette colors
                    palette = {},
                    theme = {
                        wave = {},
                        lotus = {},
                        dragon = {},
                        all = {
                            ui = {
                                pmenu = {
                                    bg_sel = "#afaf87",
                                    fg_sel = "#1c1c1c",
                                    bg = "#262626",
                                    bg_thumb = "#767676",
                                    bg_sbar = "#262626"
                                }
                            }
                        }
                    },
                },
            })

            vim.cmd("colorscheme kanagawa-dragon")
        end
    }
})
