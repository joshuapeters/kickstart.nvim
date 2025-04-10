return {
  {
    'zbirenbaum/copilot.lua',
    dependencies = {
      -- Optional: for nvim-cmp integration
      'zbirenbaum/copilot-cmp',
    },
    event = 'InsertEnter',
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = false, -- Only show suggestions when requested
        trigger_on_accept = true,
        keymap = {
          accept = '<C-y>',
          next = '<C-n>',
          prev = '<C-p>',
          dismiss = '<C-e>',
        },
      },
      panel = { enabled = false }, -- Disable suggestions panel
      filetypes = {
        -- Enable only for specific filetypes
        ['*'] = false,
        ['lua'] = true,
        ['typescript'] = true,
        ['typescriptreact'] = true,
        ['javascript'] = true,
        ['javascriptreact'] = true,
        ['ruby'] = true,
        -- Add other filetypes as needed
      },
    },
  },
}
