vim.opt.background = "dark"
vim.opt.termguicolors = true

-- Default options:
require("kanagawa").setup({
	compile = false, -- enable compiling the colorscheme
	undercurl = true, -- enable undercurls
	commentStyle = { italic = true },
	functionStyle = {},
	keywordStyle = { italic = true },
	statementStyle = { bold = true },
	typeStyle = {},
	transparent = false, -- do not set background color
	dimInactive = false, -- dim inactive window `:h hl-NormalNC`
	terminalColors = true, -- define vim.g.terminal_color_{0,17}
	colors = { -- add/modify theme and palette colors
		palette = {},
		theme = {
			wave = {},
			lotus = {},
			dragon = {},
			all = {
				diag = {
					warning = "#fb923c",
					error = "#ef4444",
				},
			},
		},
	},
	overrides = function(colors)
		local theme = colors.theme
		return {
			-- yellow background for diagnostics warning
			DiagnosticError = { fg = "#ef4444" },
			DiagnosticWarn = { fg = "#fb923c" },

			CursorLine = { bg = "#1d1f21" },
			CursorLineNr = { fg = "#d97706" },

			Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 }, -- add `blend = vim.o.pumblend` to enable transparency
			PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
			PmenuSbar = { bg = theme.ui.bg_m1 },
			PmenuThumb = { bg = theme.ui.bg_p2 },
			NormalFloat = { bg = "none" },
			FloatBorder = { bg = "none" },
			FloatTitle = { bg = "none" },

			-- Save an hlgroup with dark background and dimmed foreground
			-- so that you can use it where your still want darker windows.
			-- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
			NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },

			-- Popular plugins that open floats will link to NormalFloat by default;
			-- set their background accordingly if you wish to keep them dark and borderless
			LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
			MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
		}
	end,
	theme = "dragon", -- Load "wave" theme when 'background' option is not set
	background = { -- map the value of 'background' option to a theme
		dark = "dragon", -- try "dragon" !
		light = "lotus",
	},
})

--vim.cmd("colorscheme kanagawa-dragon")
--vim.cmd("colorscheme gruber-darker")
--vim.cmd("colorscheme zenburned")
--vim.cmd("colorscheme tokyonight-night")

--

--

--require("github-theme").setup({
--	theme_style = "dark",
--})
--
