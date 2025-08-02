return {
	"stevearc/conform.nvim",
	event = "BufWritePre",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			css = { "prettier" },
			html = { "prettier" },
			xml = { "xmlformatter" },
			php = {
				"easy-coding-standard",
				"php_cs_fixer",
				stop_after_first = true,
				lsp_format = "fallback",
				timeout_ms = 1000,
			},
			rust = { "rustfmt" },
			vue = { "prettierd", "prettier", stop_after_first = true },
			javascript = { "prettierd", "prettier", stop_after_first = true },
			typescript = { "prettierd", "prettier", stop_after_first = true },
			typescriptreact = { "prettierd", "prettier", stop_after_first = true, timeout_ms = 3000 },
			python = { "black", timeout_ms = 1000 },
			json = { "jq" },
		},

		format_on_save = {
			-- These options will be passed to conform.format()
			timeout_ms = 500,
			lsp_fallback = true,
		},

		formatters = {
			php_cs_fixer = {
				-- command = "php-cs-fixer",
				-- args = { "fix", "$FILENAME" },
				-- stdin = false,
				env = {
					PHP_CS_FIXER_IGNORE_ENV = "1",
				},
				-- condition = function(self, ctx)
				--   return vim.fs.basename(ctx.filename) ~= "README.md"
				-- end,
			},
		},
	},
}
