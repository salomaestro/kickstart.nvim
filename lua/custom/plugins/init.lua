-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'catppuccin/nvim',
    name = "catppuccin",
    priority = 10000,
    config = function()
      vim.cmd.colorscheme 'catppuccin'
    end,
  },

  'tpope/vim-surround',
  'kkoomen/vim-doge',
  {
    "danymat/neogen",
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = true,
    -- Uncomment next line if you want to follow only stable versions
    -- version = "*"
  },

  -- Pastebin support :PP will paste buffer to dpaste.org
  {
    'rktjmp/paperplanes.nvim',
    opts = {
      provider = "dpaste.org",
    },
  },

  {
    "ellisonleao/glow.nvim",
    config = true,
    cmd = "Glow",
  },
  -- {
  --   'ms-jpq/coq_nvim',
  --   branch = 'coq',
  -- },
  -- {
  --   'ms-jpq/coq.artifacts',
  --   branch = 'artifacts',
  -- },

  {
    'lukas-reineke/indent-blankline.nvim',
    config = function()
      require('indent_blankline').setup {
        space_char_blankline = " ",
        show_current_context = true,
        show_current_context_start = true,
        -- show_first_indent_level = false,
        show_trailing_blankline_indent = false,
        show_end_of_line = true,
      }
    end,
  },
  {
    'glepnir/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('dashboard').setup {
        -- config
        theme = 'hyper', --  theme is doom and hyper default is hyper
        disable_move = false, --  defualt is false disable move keymap for hyper
        shortcut_type = 'number', --  shorcut type 'letter' or 'number'
        change_to_vcs_root = false, -- default is false,for open file in hyper mru. it will change to the root of vcs
        config = {}, --  config used for theme
        hide = {
          statusline = false, -- hide statusline default is true
          tabline = false, -- hide the tabline
          winbar = false, -- hide winbar
        },
        preview = {
          -- command = true, -- preview command
          file_path = true, -- preview file path
          file_height = true, -- preview file height
          file_width = true, -- preview file width
        },
      }
    end,
    dependencies = { { 'nvim-tree/nvim-web-devicons' } }
  },
}
