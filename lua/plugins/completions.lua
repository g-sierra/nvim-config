return {
	{
		"saghen/blink.cmp",
		dependencies = { "rafamadriz/friendly-snippets" },
		version = "1.*",
		opts = {
			keymap = {
				preset = "super-tab",
				["<C-d>"] = { "scroll_documentation_down", "fallback" },
				["<C-u>"] = { "scroll_documentation_up", "fallback" },
			},
			appearance = {
				nerd_font_variant = "mono",
			},
			completion = {
				ghost_text = { enabled = true },
				menu = {
					border = "rounded",
					winhighlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:BlinkCmpMenuSelection,Search:None",
					scrollbar = false,
				},
				documentation = {
					auto_show = true,
					auto_show_delay_ms = 200,
					window = {
						border = "rounded",
						scrollbar = false,
					},
				},
			},
			signature = {
				enabled = true,
				window = {
					border = "rounded",
				},
			},
		},
	},
}
