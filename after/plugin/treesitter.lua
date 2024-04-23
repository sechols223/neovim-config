require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "tsx",
    "rust",
    "c",
    "javascript",
    "typescript",
    "c_sharp",
    "lua",
    "vim",
    "vimdoc",
    "query"
  },
  ignore_install = {},
  modules = {},
  sync_install = false,
  auto_install = true,

  highlight = {
    enable = true,

    additional_vim_regex_highlighting = false,
  },
}
