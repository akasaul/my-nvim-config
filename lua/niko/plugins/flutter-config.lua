return {
  {
    "akinsho/flutter-tools.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- optional for vim.ui.select
    },
  },
  {
    "thosakwe/vim-flutter",
    lazy = false,
    dependencies = {
      "dart-lang/dart-vim-plugin",
    },
  },
  config = true,
}
