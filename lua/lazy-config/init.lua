require("lazy").setup({
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
	"saadparwaiz1/cmp_luasnip",
	"jose-elias-alvarez/null-ls.nvim",
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
	"nvim-lualine/lualine.nvim",
	"rebelot/kanagawa.nvim",
	"lukas-reineke/indent-blankline.nvim",
})
