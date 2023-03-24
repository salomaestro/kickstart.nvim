return {
  {
    'willothy/nvim-cokeline',
    depends_on = 'kyazdani42/nvim-web-devicons',
    config = function()
      require('cokeline').setup({})
    end,
  },
}
