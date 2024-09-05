return {
  "adalessa/laravel.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "tpope/vim-dotenv",
    "MunifTanjim/nui.nvim",
    -- "nvimtools/none-ls.nvim",  -- Removed since you're not using it
  },
  cmd = { "Sail", "Artisan", "Composer", "Npm", "Yarn", "Laravel" },
  keys = {
    { "<leader>la", ":Laravel artisan<cr>" },
    { "<leader>lr", ":Laravel routes<cr>" },
    { "<leader>lm", ":Laravel related<cr>" },
  },
  event = { "VeryLazy" },
  opts = {
    features = {
      -- null_ls = { enable = false },  -- Removed since you're not using it
      route_info = {
        enable = true,
        position = "right",
        middlewares = true,
        method = true,
        uri = true,
      },
    },
  },
  config = true,
}
