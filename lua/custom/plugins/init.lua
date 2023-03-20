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
}
