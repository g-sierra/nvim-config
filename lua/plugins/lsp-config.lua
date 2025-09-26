return {
	{
		"mason-org/mason.nvim",
		opts = {
			ensure_installed = { "stylua", "prettier", "black", "isort" },
			auto_install = true,
			ui = { border = "rounded" },
		},
	},
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			ensure_installed = { "lua_ls", "ts_ls", "emmet_language_server", "html", "cssls" },
			auto_install = true,
		},
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"saghen/blink.cmp",
			{
				"folke/lazydev.nvim",
				ft = "lua",
				opts = {
					library = {
						{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
					},
				},
			},
		},
		config = function()
			local capabilities = require("blink.cmp").get_lsp_capabilities()
			vim.lsp.config("*", { capabilities = { capabilities }, })
			-- vim.lsp.enable({ "lua_ls", "ts_ls" })  -- this is called automatically by mason-lspconfig.nvim

			vim.diagnostic.config({ virtual_text = true })

			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "gh", vim.lsp.buf.hover, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
