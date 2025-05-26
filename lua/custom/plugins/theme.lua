return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    config = function()
      require('catppuccin').setup {
        transparent_background = true,
        no_italic = true,
        no_bold = true,
      }
      vim.cmd.colorscheme 'catppuccin-mocha'
    end,
  },
}
