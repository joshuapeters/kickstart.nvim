return {
  {
    'supermaven-inc/supermaven-nvim',
    config = function()
      require('supermaven-nvim').setup {
        keymaps = {
          accept_suggestion = '<C-y>',
          clear_suggestion = '<C-e>',
          accept_word = '<C-j>',
        },
      }
    end,
  },
  {
    'olimorris/codecompanion.nvim',
    opts = {},
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-treesitter/nvim-treesitter',
    },
    config = function()
      require('codecompanion').setup {
        adapters = {
          openai = function()
            return require('codecompanion.adapters').extend('openai', {
              env = {
                api_key = os.getenv 'ANTHROPIC_API_KEY',
              },
            })
          end,
        },
      }
    end,
  },
}
