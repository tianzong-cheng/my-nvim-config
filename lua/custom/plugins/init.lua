-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'github/copilot.vim',
    config = function()
      vim.g.copilot_filetypes = { markdown = false }
    end,
  },
  {
    'chomosuke/typst-preview.nvim',
    lazy = false,
    version = '1.*',
    build = function()
      require('typst-preview').update()
    end,
  },
  {
    'declancm/cinnamon.nvim',
    config = function()
      require('cinnamon').setup {
        keymaps = {
          basic = true,
          extra = true,
        },
      }
    end,
  },
  {
    'petertriho/nvim-scrollbar',
    config = function()
      require('scrollbar').setup()
    end,
  },
  {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require('bufferline').setup {
        options = {
          always_show_bufferline = true,
        },
      }
    end,
  },
  {
    'gelguy/wilder.nvim',
    config = function()
      local wilder = require 'wilder'
      wilder.setup { modes = { ':', '/', '?' } }
      wilder.set_option(
        'renderer',
        wilder.popupmenu_renderer {
          -- highlighter applies highlighting to the candidates
          highlighter = wilder.basic_highlighter(),
        }
      )
    end,
  },
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    config = function()
      require('toggleterm').setup {
        open_mapping = [[<c-\>]],
        on_open = function(term)
          vim.cmd 'setlocal nospell' -- Disable spell check for terminal buffers
        end,
      }
    end,
  },
  {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('dashboard').setup {}
    end,
    dependencies = { { 'nvim-tree/nvim-web-devicons' } },
  },
}
