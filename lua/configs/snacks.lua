local M = {}

local function file_exists(filename)
  local file = io.open(filename, "r")
  if file then
    file:close()
    return true
  end
  return false
end

--[[
M.dashboard = {
  width = 120,
  sections = {
    -- {
    --   section = "terminal",
    --   cmd = "chafa ~/Pictures/bg/gothredgirl.jpg --format symbols --symbols vhalf --size 60x20 --stretch; sleep 0.1",
    --   height = 15,
    --   padding = 1,
    --   pane = 1,
    -- },
    -- {
    -- { section = "projects", padding = 1, gap = 1, pane = 2 },
    -- { section = "keys", padding = 1, gap = 1, pane = 2 },
    { section = "startup", pane = 1 },
    -- },
    {
      pane = 1,
      icon = " ",
      title = "Readme",
      section = "terminal",
      enabled = function()
        return file_exists "README.md"
      end,
      cmd = "bat README.md",
      height = 20,
      padding = 1,
      -- ttl = 10,
      indent = 3,
    },

    {
      pane = 1,
      icon = " ",
      title = "Git log",
      section = "terminal",
      enabled = function()
        return Snacks.git.get_root() ~= nil
      end,
      cmd = "git log --oneline | head -n 5",
      height = 5,
      padding = 1,
      -- ttl = 5 * 60,
      indent = 3,
    },

    {
      pane = 1,
      icon = " ",
      title = "Docker",
      section = "terminal",
      enabled = function()
        return (
          file_exists "docker-compose.yml"
          or file_exists "docker-compose.yaml"
          or file_exists ".docker/docker-compose.yml"
          or file_exists ".docker/docker-compose.yaml"
        )
      end,
      cmd = "if [ -e docker-compose.yaml ] || [ -e docker-compose.yml ]; then docker compose ps; elif [ -e .docker/docker-compose.yaml ] || [ -e .docker/docker-compose.yml ]; then (cd .docker && docker compose ps); else echo ok; fi",
      height = 5,
      padding = 1,
      -- ttl = 5 * 60,
      indent = 3,
    },
  },
}
--]]

M.image = {
  enabled = true,
}

M.toggle = {
  enabled = true,
}

M.lazygit = {}

M.explorer = {}

M.picker = {
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

return M
