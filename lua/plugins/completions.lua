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
			signature = { enabled = true },
			fuzzy = { implementation = "prefer_rust_with_warning" },
		},
	},
}
