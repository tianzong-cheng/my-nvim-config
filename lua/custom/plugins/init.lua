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
}
