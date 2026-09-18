# 💤 LazyVim Config

My personal Neovim configuration built on [LazyVim](https://github.com/LazyVim/LazyVim), tailored for full-stack development with **Go**, **Java**, **TypeScript/JavaScript**, and **Tailwind CSS**.

## ✨ Features

### Language Support

| Language | LSP | Formatter | Linter |
|----------|-----|-----------|--------|
| Go | `gopls` | `gofumpt` + `goimports` + `golines` | `golangci-lint` |
| Java | `jdtls` | `google-java-format` | — |
| TypeScript / JavaScript | `vtsls` | `prettier` / `prettierd` | `eslint` |
| HTML | `emmet_ls` | `prettierd` | `htmlhint` |
| CSS / SCSS | `tailwindcss` | `prettierd` | `stylelint` |
| JSON | `jsonls` + SchemaStore | `prettier` | — |
| Tailwind CSS | `tailwindcss-language-server` | — | — |

### LazyVim Extras Enabled

- `lang.go` — Go development
- `lang.java` — Java development (via nvim-jdtls)
- `lang.typescript` — TypeScript/JavaScript
- `lang.tailwind` — Tailwind CSS intellisense
- `lang.json` — JSON with schema support
- `linting.eslint` — ESLint integration
- `formatting.prettier` — Prettier formatting

### Editor Settings

- Hard tabs, displayed at width 2
- Emmet support for HTML/CSS/JSX/TSX

## 📦 Requirements

- [Neovim](https://neovim.io/) >= 0.11.2
- [Node.js](https://nodejs.org/) (for LSP servers and formatters)
- [Go](https://go.dev/) (for Go development)
- [JDK 21+](https://openjdk.org/) (for Java development)
- [ripgrep](https://github.com/BurntSushi/ripgrep) — fuzzy search
- [fd](https://github.com/sharkdp/fd) — file finder
- [fzf](https://github.com/junegunn/fzf) — fuzzy finder
- [lazygit](https://github.com/jesseduffield/lazygit) — git UI (optional)

```bash
# Ubuntu/Debian
sudo apt install ripgrep fd-find fzf lazygit openjdk-21-jdk
```

## 🚀 Installation

```bash
# Back up existing config
mv ~/.config/nvim ~/.config/nvim.bak

# Clone this repo
git clone git@github.com:aziemp66/lazy-git-config.git ~/.config/nvim

# Launch Neovim — plugins and tools will auto-install on first run
nvim
```

## 📁 Structure

```
~/.config/nvim/
├── init.lua                  # Entry point
├── lazyvim.json              # LazyVim extras configuration
├── lua/
│   ├── config/
│   │   ├── autocmds.lua      # Custom autocommands
│   │   ├── keymaps.lua       # Custom keymaps
│   │   ├── lazy.lua          # Lazy.nvim bootstrap
│   │   └── options.lua       # Editor options (tabs, indentation)
│   └── plugins/
│       └── lang.lua          # Language-specific plugin config
└── stylua.toml               # StyLua formatter config
```
