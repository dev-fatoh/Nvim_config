# My Neovim Config

Personal Neovim setup based on kickstart.nvim, modularized into `lua/config/`.

## Features
- LSP: Python, Go, TypeScript/JS, HTML, CSS, Tailwind, Emmet
- Formatting via none-ls (black, gofmt, prettier) with format-on-save
- Better-escape (jk to exit insert mode)
- Save sound notification

## Structure
- `init.lua` – entry point
- `lua/config/plugins.lua` – plugin declarations (vim.pack)
- `lua/config/lsp.lua` – LSP server configs
- `lua/config/formatting.lua` – formatters + format-on-save
- `lua/config/keymaps.lua` – custom keymaps
- `lua/config/autocmds.lua` – autocommands

## Install
\`\`\`bash
git clone https://github.com/dev-fatoh/Nvim_config ~/.config/nvim
\`\`\`
