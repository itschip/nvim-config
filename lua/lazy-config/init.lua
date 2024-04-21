require("lazy").setup({
	--"github/copilot.vim",
	"kyazdani42/nvim-web-devicons",
	"nvim-lua/plenary.nvim",
	"ThePrimeagen/harpoon",
	"nvim-telescope/telescope.nvim",
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-cmdline",
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
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
	},
	"saadparwaiz1/cmp_luasnip",
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
    {"navarasu/onedark.nvim",
        config = function() 
            require('onedark').setup {
                style = 'darker',
            }
            require('onedark').load()
	    end
    },
	--[[{
        "rose-pine/neovim",
        name = "rose-pine",
		config = function()
            require("rose-pine").setup({
                styles = {
                    bold = true,
                    italic = false,
                    transparency = true,
                },
            })

            vim.cmd("colorscheme rose-pine")
		end,
	},--]]
})
