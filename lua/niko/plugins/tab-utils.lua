return {
  {
    "ThePrimeagen/harpoon",
    config = function()
      local mark = require("harpoon.mark")
      local ui = require("harpoon.ui")
      local keymap = vim.keymap -- for conciseness

      keymap.set("n", "<leader>a", mark.add_file)
      keymap.set("n", "<C-m>", ui.toggle_quick_menu)

      keymap.set("n", "<leader>h1", function()
        ui.nav_file(1)
      end)
      keymap.set("n", "<leader>h2", function()
        ui.nav_file(2)
      end)
      keymap.set("n", "<leader>h3", function()
        ui.nav_file(3)
      end)
      keymap.set("n", "<leader>h4", function()
        ui.nav_file(4)
      end)
    end,
  },
  {
    "axkirillov/hbac.nvim",
    config = true,
  },
  {
    "rushjs1/nuxt-goto.nvim",
  }
}
