-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

-- Iterate over all Lua files in the plugins directory and load them
local plugins_dir = vim.fs.joinpath(vim.fn.stdpath 'config', 'lua', 'custom', 'plugins')
for file_name, type in vim.fs.dir(plugins_dir, { follow = true }) do
  if (type == 'file' or type == 'link') and file_name:match '%.lua$' and file_name ~= 'init.lua' then
    local module = file_name:gsub('%.lua$', '')
    require('custom.plugins.' .. module)
  end
end

-- vim.pack.add({
--   { src = "https://github.com/nvimtools/none-ls.nvim" },
-- })
--
-- -- Mason setup
-- -- none-ls formatters
-- local null_ls = require("null-ls")
-- null_ls.setup({
--   sources = {
--     null_ls.builtins.formatting.black,
--     null_ls.builtins.formatting.gofmt,
--     null_ls.builtins.formatting.prettier.with({
--       filetypes = { "javascript", "typescript", "css", "html", "json", "markdown" },
--     }),
--   },
-- })
--
-- -- Format on save
-- vim.api.nvim_create_autocmd("BufWritePre", {
--   pattern = { "*.py", "*.go", "*.js", "*.ts", "*.css", "*.html" },
--   callback = function()
--     vim.lsp.buf.format({
--       filter = function(client) return client.name == "null-ls" end,
--       timeout_ms = 2000,
--     })
--   end,
-- })
