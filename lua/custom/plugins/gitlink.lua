return {
  {
    'ruifm/gitlinker.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('gitlinker').setup()
      vim.keymap.set('n', '<leader>gy', require('gitlinker').get_buf_range_url, { desc = 'Copy GitHub URL' })
      vim.keymap.set('v', '<leader>gy', require('gitlinker').get_buf_range_url, { desc = 'Copy GitHub URL for selection' })
    end,
  },
}
