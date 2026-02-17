return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require("rose-pine").setup {
        disable_background = true,
        styles = {
          italic = false,
        },
      }
    end,
  },
  {
    "vague-theme/vague.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other plugins
    config = function()
      require("vague").setup {
        transparent = true,
        italic = false,
      }
      vim.cmd "colorscheme vague"
    end,
  },
}
