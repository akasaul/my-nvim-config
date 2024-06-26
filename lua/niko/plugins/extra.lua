return {
  -- {
  --   "karb94/neoscroll.nvim",
  --   config = function()
  --     require("neoscroll").setup({
  --       stop_eof = true,
  --       easing_function = "sine",
  --       hide_cursor = true,
  --       cursor_scrolls_alone = true,
  --     })
  --   end,
  -- },
  {
    "j-hui/fidget.nvim",
    branch = "legacy",
    enabled = false,
    config = function()
      require("fidget").setup({
        window = { blend = 0 },
      })
    end,
  },
  {
    "olexsmir/gopher.nvim",
    ft = "go",
    config = function(_, opts)
      require("gopher").setup(opts)
    end,
    build = function()
      vim.cmd([[silent! GoInstallDeps]])
      -- set keymaps
      local keymap = vim.keymap -- for conciseness

      keymap.set("n", "<leader>gsj", "<cmd> GoTagAdd json <CR>", { desc = "Add json struct tags" })
    end,
  },
  {
    "rcarriga/nvim-notify",
  },
}
