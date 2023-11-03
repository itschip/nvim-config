local lush = require("lush")
local hsl = lush.hsl

-- Color Definitions
local colors = {
	color0 = hsl("#1f2430"),
	color1 = hsl("#cccac2"),
	color2 = hsl("#ffcc66"),
	color3 = hsl("#4c515d"),
	color4 = hsl("#292e3a"),
	color5 = hsl("#515662"),
	color6 = hsl("#333844"),
	color7 = hsl("#656a76"),
	color8 = hsl("#848ea0"),
	color9 = hsl("#9da7b9"),
	color10 = hsl("#6a6f7b"),
	color11 = hsl("#ebbd5f"),
	color12 = hsl("#3d424e"),
	color13 = hsl("#eae8e0"),
	color14 = hsl("#d6d4cc"),
	color15 = hsl("#424753"),
	color16 = hsl("#dfbfff"),
	color17 = hsl("#ffd173"),
	color18 = hsl("#ffad66"),
	color19 = hsl("#f29e74"),
	color20 = hsl("#d5ff80"),
}

-- Neovim Theme Definition
return lush(function()
	return {
		Normal({ fg = colors.color1, bg = colors.color0 }),
		Cursor({ fg = colors.color2 }),
		Visual({ bg = colors.color3 }),
		ColorColumn({ bg = colors.color4 }),
		LineNr({ fg = colors.color5 }),
		CursorLine({ bg = colors.color6 }),
		CursorLineNr({ fg = colors.color7 }),
		CursorColumn({ bg = colors.color6 }),
		StatusLineNC({ fg = colors.color8, bg = colors.color6 }),
		StatusLine({ fg = colors.color9, bg = colors.color3 }),
		VertSplit({ bg = colors.color10 }),
		Folded({ fg = colors.color11, bg = colors.color6 }),
		Pmenu({ fg = colors.color13, bg = colors.color12 }),
		PmenuSel({ fg = colors.color14, bg = colors.color4 }),
		EndOfBuffer({ fg = colors.color15, bg = colors.color0 }),
		NonText({ fg = colors.color15, bg = colors.color0 }),

		Comment({ fg = colors.color3 }),
		Constant({ fg = colors.color16 }),
		Special({ fg = colors.color16 }),
		Identifier({ fg = colors.color1 }),
		Function({ fg = colors.color17 }),
		Statement({ fg = colors.color18 }),
		Operator({ fg = colors.color19 }),
		PreProc({ fg = colors.color18 }),
		Type({ fg = colors.color18 }),
		String({ fg = colors.color20 }),
		Number({ fg = colors.color16 }),
		cStatement({ Statement }),
		cSpecial({ Special }),
	}
end)
