return {
  { 'akinsho/git-conflict.nvim', version = '*', config = true },
  {
    'ruifm/gitlinker.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('gitlinker').setup()
      vim.keymap.set('n', '<leader>gy', require('gitlinker').get_buf_range_url, { desc = 'Copy GitHub URL' })
      vim.keymap.set('v', '<leader>gy', require('gitlinker').get_buf_range_url, { desc = 'Copy GitHub URL for selection' })
    end,
  },
  {
    'f-person/git-blame.nvim',
    -- load the plugin at startup
    event = 'VeryLazy',
    opts = {
      enabled = true,
      message_template = ' <author> • <summary> • <date> • <<sha>>',
      date_format = '%m-%d-%Y %H:%M:%S',
      virtual_text_column = 1,
    },
  },
  {
    'ldelossa/gh.nvim',
    dependencies = {
      {
        'ldelossa/litee.nvim',
        config = function()
          require('litee.lib').setup()
        end,
      },
    },
    config = function()
      require('litee.gh').setup()
    end,
  },
}
