return {
	{
		"stevearc/conform.nvim",
		config = function()
			require("conform").setup({
				formatters = {
					["markdown-toc"] = {
						condition = function(_, ctx)
							for _, line in ipairs(vim.api.nvim_buf_get_lines(ctx.buf, 0, -1, false)) do
								if line:find("<!%-%- toc %-%->") then
									return true
								end
							end
						end,
					},
					["markdownlint-cli2"] = {
						condition = function(_, ctx)
							local diag = vim.tbl_filter(function(d)
								return d.source == "markdownlint"
							end, vim.diagnostic.get(ctx.buf))
							return #diag > 0
						end,
					},
				},
				formatters_by_ft = {
					lua = { "stylua" },
					go = { "goimports", "gofmt" },
					javascript = { "prettier" },
					typescript = { "prettier" },
					javascriptreact = { "prettier" },
					typescriptreact = { "prettier" },
					["markdown"] = { "prettier", "markdownlint-cli2", "markdown-toc" },
					["markdown.mdx"] = { "prettier", "markdownlint-cli2", "markdown-toc" },
				},
			})
			vim.api.nvim_create_autocmd("BufWritePre", {
				pattern = "*",
				callback = function(args)
					require("conform").format({ bufnr = args.buf })
				end,
			})
		end,
	},
}
