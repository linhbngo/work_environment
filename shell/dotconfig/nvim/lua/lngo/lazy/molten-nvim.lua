return {
  {
    "benlubas/molten-nvim",
    lazy = false,
    ft = { "python", "ipynb", "quarto", "markdown" },
    version = "^1.0.0", -- use version <2.0.0 to avoid breaking changes
    dependencies = { "3rd/image.nvim" },
    build = ":UpdateRemotePlugins",
    init = function()
      -- these are examples, not defaults. Please see the readme
      vim.g.molten_image_provider = "image.nvim"
      vim.g.molten_output_win_max_height = 20
      vim.g.molten_auto_open_output = false
      vim.g.molten_terminal = "nvim-terminal"
      vim.g.molten_use_jupyter_console = true
      -- optional, I like wrapping. works for virt text and the output window
      vim.g.molten_wrap_output = true

      -- Output as virtual text. Allows outputs to always be shown, works with images, but can
      -- be buggy with longer images
      vim.g.molten_virt_text_output = true

      -- this will make it so the output shows up below the \`\`\` cell delimiter
      vim.g.molten_virt_lines_off_by_1 = true
      --end,
      vim.keymap.set("n", "<localleader>rc", ":MoltenEvaluateCell<CR>", { desc = "Molten run cell", silent = true })
      vim.keymap.set("n", "<localleader>rl", ":MoltenEvaluateLine<CR>", { desc = "Molten run line", silent = true })
      vim.keymap.set("v", "<localleader>r", ":<C-u>MoltenEvaluateVisual<CR>",
        { desc = "Molten run visual selection", silent = true })
      vim.keymap.set("n", "<localleader>ra", ":MoltenEvaluateCellsAbove<CR>",
        { desc = "Molten run cells above", silent = true })
      vim.keymap.set("n", "<localleader>rA", ":%MoltenEvaluate<CR>", { desc = "Molten run all cells", silent = true })

      --config = function()
      --local runner = require("quarto.runner")
      --local molten = require("molten")
      --vim.keymap.set("n", "<localleader>rc", function()
      --  molten.run_cell()
      --end, { desc = "Molten run cell", silent = true })

      --vim.keymap.set("n", "<localleader>rl", function()
      --  molten.run_line()
      --end, { desc = "Molten run line", silent = true })

      --vim.keymap.set("v", "<localleader>r", function()
      --  molten.run_visual()
      --end, { desc = "Molten run visual selection", silent = true })

      --vim.keymap.set("n", "<localleader>ra", function()
      --  molten.run_above()
      -- end, { desc = "Molten run cells above", silent = true })

      --vim.keymap.set("n", "<localleader>rA", function()
      --  molten.run_all()
      --end, { desc = "Molten run all cells", silent = true })

      --vim.keymap.set("n", "<localleader>rc", runner.run_cell, { desc = "run cell", silent = true })
      --vim.keymap.set("n", "<localleader>ra", runner.run_above, { desc = "run cell and above", silent = true })
      --vim.keymap.set("n", "<localleader>rA", runner.run_all, { desc = "run all cells", silent = true })
      --vim.keymap.set("n", "<localleader>rl", runner.run_line, { desc = "run line", silent = true })
      --vim.keymap.set("v", "<localleader>r", runner.run_range, { desc = "run visual range", silent = true })
      --vim.keymap.set("n", "<localleader>RA", function()
      --  runner.run_all(true)
      --end, { desc = "run all cells of all languages", silent = true })
    end,
  }
}
