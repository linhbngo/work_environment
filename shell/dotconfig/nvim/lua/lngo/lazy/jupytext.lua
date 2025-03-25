return {
  { -- directly open ipynb files as quarto docuements
    -- and convert back behind the scenes
    'GCBallesteros/jupytext.nvim',
    opts = {
      custom_language_formatting = {
        python = {
          extension = 'md',
          style = 'markdown',
          force_ft = 'markdown',
        },
        r = {
          extension = 'md',
          style = 'markdown',
          force_ft = 'markdown',
        },
      },
    },
  },
}
