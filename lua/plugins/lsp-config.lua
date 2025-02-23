return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "ts_ls", "cssls", "emmet_ls" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				--cmd: `{ "lua-language-server" }`
				cmd = { "lua-language-server.cmd" },
				capabilities = capabilities,
			})

			lspconfig.ts_ls.setup({
				cmd = { "typescript-language-server.cmd", "--stdio" },
				capabilities = capabilities,
			})

			lspconfig.cssls.setup({
				cmd = { "vscode-css-language-server.cmd", "--stdio" },
				capabilities = capabilities,
			})

			lspconfig.emmet_ls.setup({
				cmd = { "emmet-ls.cmd", "--stdio" },
				filetypes = { "html", "css" },
				init_options = {
					showExpandedAbbreviation = "always",
					showAbbreviationSuggestions = true,
					syntaxProfiles = {},
					variables = {},
				},
				capabilities = capabilities,
			})

			-- Keymaps to lsp
			vim.keymap.set("n", "H", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
		end,
	},
}
