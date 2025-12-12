return {
	{
		"mason-org/mason.nvim",
		opts = {},
	},
	{
		"mason-org/mason-lspconfig.nvim",
		opts = { ensure_installed = { "basedpyright", "ruff", "gopls" } },
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"saghen/blink.cmp",
		},
		config = function()
			local capabilities = require("blink.cmp").get_lsp_capabilities()
			vim.lsp.enable("basedpyright", { capabilities = capabilities })
			vim.lsp.enable("ruff", { capabilities = capabilities })
			vim.lsp.enable("gopls", { capabilities = capabilities })
		end,
	},
}
