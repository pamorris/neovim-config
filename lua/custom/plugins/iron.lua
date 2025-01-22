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
          send_motion = '<space>rc',
          visual_send = '<space>rc',
          send_file = '<space>rf',
          send_line = '<space>rl',
          send_paragraph = '<space>rp',
          send_until_cursor = '<space>ru',
          send_mark = '<space>rm',
          mark_motion = '<space>rc',
          mark_visual = '<space>rc',
          remove_mark = '<space>rd',
          cr = '<space>r<cr>',
          interrupt = '<space>r<space>',
          exit = '<space>rq',
          clear = '<space>rl',
        },
        highlight = {
          italic = true,
        },
        ignore_blank_lines = true,
      }

      -- Set keymaps for Iron commands *after* iron.nvim is set up
      vim.keymap.set('n', '<space>rs', '<cmd>IronRepl<cr>')
      vim.keymap.set('n', '<space>rr', '<cmd>IronRestart<cr>')
      vim.keymap.set('n', '<space>rf', '<cmd>IronFocus<cr>')
      vim.keymap.set('n', '<space>rh', '<cmd>IronHide<cr>')
    end,
  },
}
