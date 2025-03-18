return {
  {
    'vigemus/iron.nvim',
    dependencies = {}, -- plenary is usually needed
    config = function()
      local iron = require 'iron.core'
      iron.setup {
        config = {
          scratch_repl = true,
          repl_definition = {
            sh = {
              command = { 'zsh' },
            },
            python = {
              command = { 'python3' },
              format = require('iron.fts.common').bracketed_paste_python,
            },
          },
          repl_open_cmd = require('iron.view').split.vertical.botright(0.4),
        },
        keymaps = {
          send_motion = '<space>Ic',
          visual_send = '<space>Ic',
          send_file = '<space>If',
          send_line = '<space>Il',
          send_paragraph = '<space>Ip',
          send_until_cursor = '<space>Iu',
          send_mark = '<space>Im',
          mark_motion = '<space>Ic',
          mark_visual = '<space>Ic',
          remove_mark = '<space>Id',
          cr = '<space>r<Ir>',
          interrupt = '<space>I<space>',
          exit = '<space>Iq',
          clear = '<space>Il',
        },
        highlight = {
          italic = true,
        },
        ignore_blank_lines = true,
      }

      -- Set keymaps for Iron commands *after* iron.nvim is set up
      vim.keymap.set('n', '<space>Is', '<cmd>IronRepl<cr>')
      vim.keymap.set('n', '<space>Ir', '<cmd>IronRestart<cr>')
      vim.keymap.set('n', '<space>If', '<cmd>IronFocus<cr>')
      vim.keymap.set('n', '<space>Ih', '<cmd>IronHide<cr>')
    end,
  },
}
