return {
  { "ThePrimeagen/harpoon",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local mark = require('harpoon.mark')
      local ui = require('harpoon.ui')
      local set = vim.keymap.set

      set("n", "<leader>a", mark.add_file)
      set("n", "<leader>h", ui.toggle_quick_menu)

      set("n", "<leader>1", function() ui.nav_file(1) end)
      set("n", "<leader>2", function() ui.nav_file(2) end)
      set("n", "<leader>3", function() ui.nav_file(3) end)
      set("n", "<leader>4", function() ui.nav_file(4) end)
    end,
  },
}
