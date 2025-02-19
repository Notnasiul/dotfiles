-- override default plugins configs!

local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
    "json",
    "hlsl",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    -- "typescript-language-server",
    "deno",
    "prettier",

    -- c/cpp stuff
    "clangd",
    "clang-format",

    -- shell
    "shellcheck",
    "bash-language-server"
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
    ignore = true
  },
  
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },

  filters = {
    dotfiles = true,
    custom = {
      --"^.git$",
    },
    exclude = {}
  },
}

return M
