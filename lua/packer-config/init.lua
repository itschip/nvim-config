return require('packer').startup(function() 
    use 'wbthomason/packer.nvim'

    use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}

    use {'nvim-telescope/telescope.nvim', tag = '0.1.0', requires = { {'nvim-lua/plenary.nvim'} }}

    use "EdenEast/nightfox.nvim"

    use "feline-nvim/feline.nvim"


    use "williamboman/mason.nvim"
    use "williamboman/mason-lspconfig.nvim"

    use "neovim/nvim-lspconfig"

    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/cmp-path"
    use "hrsh7th/cmp-cmdline"

    use "hrsh7th/nvim-cmp"

    use "L3MON4D3/LuaSnip"
    use "saadparwaiz1/cmp_luasnip"

    use { 
        'lewis6991/gitsigns.nvim', 
        config = function()
            require('gitsigns').setup()
        end
    }

    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup({
            size = 10,
            open_mapping = [[<c-\>]],
            shading_factor = 2,
            direction = "horizontal",
        })
    end}

    use "jose-elias-alvarez/null-ls.nvim"

    use {
      "windwp/nvim-autopairs",
      config = function() require("nvim-autopairs").setup {} end
    }

    use { "ellisonleao/gruvbox.nvim" }


    use "mrjones2014/smart-splits.nvim"
end)
