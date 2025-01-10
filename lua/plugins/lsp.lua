return {
  'neovim/nvim-lspconfig',
  dependencies = {
    'william/mason.nvim',
    'folke/neodev.nvim',
  },
  config = function()
    require('neodev').setup()
    require('lspconfig').lua_ls.setup({
      settings = {
        Lua = {
          telemetry = { enable = false },
          workspace = { checkThirdParty = false },
        }
      }
    })
  end,
}
