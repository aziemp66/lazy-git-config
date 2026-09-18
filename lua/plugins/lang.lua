return {
  -- ── Extra Treesitter Parsers ──────────────────────────────────────────
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        -- frontend
        "html",
        "css",
        "scss",
        "javascript",
        "typescript",
        "tsx",
        -- backend
        "go",
        "gomod",
        "gowork",
        "gosum",
        "java",
        -- data / config
        "json",
        "yaml",
        "toml",
        -- misc
        "dockerfile",
        "sql",
        "xml",
      })
    end,
  },

  -- ── Mason: extra tools ────────────────────────────────────────────────
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        -- Go
        "gofumpt",
        "goimports",
        "golines",
        "delve",
        -- Java
        "google-java-format",
        -- JS/TS / frontend
        "prettierd",
        "eslint_d",
        "htmlhint",
        -- CSS
        "stylelint",
        -- General
        "emmet-ls",
      })
    end,
  },

  -- ── Conform: formatter configuration ──────────────────────────────────
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        go = { "gofumpt", "goimports", "golines" },
        java = { "google-java-format" },
        html = { "prettierd" },
        css = { "prettierd" },
        scss = { "prettierd" },
        -- JS/TS/JSX/TSX formatting is handled by the prettier extra
      },
    },
  },

  -- ── Emmet LSP for fast HTML / JSX authoring ───────────────────────────
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        emmet_ls = {
          filetypes = {
            "html",
            "css",
            "scss",
            "javascript",
            "javascriptreact",
            "typescript",
            "typescriptreact",
          },
        },
      },
    },
  },
}
