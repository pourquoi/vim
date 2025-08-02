return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    image = { enabled = true },
    toggle = { enabled = true },
    lazygit = {},
    explorer = {},
    picker = {
      layout = {
        fullscreen = true,
      },
      sources = {
        explorer = {
          fullscreen = true,
          finder = "explorer",
          auto_close = true,
          hidden = true,
          include = { ".env*", ".docker", ".gitignore" },
        },
      },
    }
  }
}
