return {
	{ -- requires plugins in lua/plugins/treesitter.lua and lua/plugins/lsp.lua
		-- for complete functionality (language features)
		'quarto-dev/quarto-nvim',
		--enabled = false,
		ft = { 'quarto' },
		dev = false,
		opts = {
			lspFeatures = {
				enabled = true,
				languages = { "r", "rust", "python" },
				chunks = "all",
				diagnostics = {
					enabled = true,
					triggers = { "BufWritePost" },
				},
			},
			codeRunner = {
				enabled = true,
				default_method = "molten", -- explicitly prefer molten if installed, or "slime"
			},
		},
		config = function(_, opts)
			require("quarto").setup(opts)
			-- Explicitly add your Quarto keybindings here:
			local runner = require("quarto.runner")

			vim.keymap.set("n", "<localleader>rc", runner.run_cell, { desc = "run cell", silent = true })
			vim.keymap.set("n", "<localleader>ra", runner.run_above,
				{ desc = "run cell and above", silent = true })
			vim.keymap.set("n", "<localleader>rA", runner.run_all, { desc = "run all cells", silent = true })
			vim.keymap.set("n", "<localleader>rl", runner.run_line, { desc = "run line", silent = true })
			vim.keymap.set("v", "<localleader>r", runner.run_range,
				{ desc = "run visual range", silent = true })
			vim.keymap.set("n", "<localleader>RA", function()
				runner.run_all(true)
			end, { desc = "run all cells of all languages", silent = true })
		end,

		dependencies = {
			-- for language features in code cells
			-- configured in lua/plugins/lsp.lua and
			-- added as a nvim-cmp source in lua/plugins/completion.lua
			'jmbuhr/otter.nvim',
		},
	},
}
