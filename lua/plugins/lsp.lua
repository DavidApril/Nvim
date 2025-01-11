return {
  'neovim/nvim-lspconfig',
  dependencies = {
    'william/mason.nvim',
    'folke/neodev.nvim',
  },
  config = function()

    require('neodev').setup()
    local lspconfig = require('lspconfig')

    -- TypeScript
    lspconfig.ts_ls.setup({
     settings = {
        completions = {
          completeFunctionCalls = true,
        },
        filetypes = {
          "javascript",
          "javascriptreact",
          "javascript.jsx",
          "typescript",
          "typescriptreact",
          "typescript.tsx",
        },
      } 
    })
    -- Lua
    lspconfig.lua_ls.setup({
      settings = {
        Lua = {
          telemetry = { enable = false },
          workspace = { checkThirdParty = false },
        }
      }
    })
  end,
}
