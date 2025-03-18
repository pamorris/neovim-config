return {
  'NeogitOrg/neogit',
  dependencies = {
    'nvim-lua/plenary.nvim', -- required
    'sindrets/diffview.nvim', -- optional - Diff integration
    'nvim-telescope/telescope.nvim', -- optional
  },
  keys = {
    { '<leader>Gs', ':Neogit<CR>', desc = 'Neogit status', silent = true },
  },
  config = true,
}
