return {
	{
		"saghen/blink.cmp",
		dependencies = { "rafamadriz/friendly-snippets" },
		version = "1.*",
		opts = {
			keymap = { preset = "super-tab" },
			appearance = {
				nerd_font_variant = "mono",
			},
			completion = {
				menu = {
					border = "rounded",
					winhighlight = "Normal:BlinkCmpDoc,FloatBorder:BlinkCmpDocBorder,CursorLine:BlinkCmpDocCursorLine,Search:None",
				},
				documentation = {
					window = {
						border = "rounded",
					},
				},
			},
			signature = {
				enabled = true,
				window = {
					border = "rounded",
					treesitter_highlighting = true,
					show_documentation = true,
				},
			},
			fuzzy = { implementation = "prefer_rust_with_warning" },
		},
	},
}
