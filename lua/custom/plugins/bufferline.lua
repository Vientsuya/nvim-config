return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    vim.opt.termguicolors = true
    require("bufferline").setup {
      options = {
        offsets = {
          {
            filetype = 'neo-tree',
            text = 'File Explorer',
            highlight = 'Directory',
            separator = false,
          }
        }
      }
    }
    vim.keymap.set('n', '<S-l>', '<CMD>BufferLineCycleNext<CR>')
    vim.keymap.set('n', '<S-h>', '<CMD>BufferLineCyclePrev<CR>')
    vim.keymap.set('n', '<C-w>', '<CMD>:bd<CR>')
  end,
}
