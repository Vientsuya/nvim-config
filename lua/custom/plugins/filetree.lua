return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require('neo-tree').setup {
      window = {
        position = 'right',
      }
    }
    vim.keymap.set('n', '<C-b>', '<CMD>Neotree toggle<CR>')
    vim.keymap.set('n', '<Leader>ff', '<CMD>Neotree action=focus<CR>')
    vim.keymap.set('n', '<Leader>bf', '<CMD>buffer<CR>')
  end,
}
