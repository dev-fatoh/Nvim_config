
local gh = require("util").gh
  
  vim.pack.add { { src = gh 'folke/tokyonight.nvim' } }

  ---@diagnostic disable-next-line: missing-fields
  require('tokyonight').setup {
    styles = {
      comments = { italic = false }, -- Disable italics in comments
    },
  }

  
