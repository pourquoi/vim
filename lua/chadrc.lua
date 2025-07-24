-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "tokyonight",

  -- hl_override = {
  -- 	Comment = { italic = true },
  -- 	["@comment"] = { italic = true },
  -- },
}

local header = {} -- require("nvdash").header
local header_file = io.open(os.getenv "HOME" .. "/Pictures/bg/gothredgirl_term")
if header_file then
  local content = header_file:read "*a"
  header_file:close()
  header = {}
  for line in content:gmatch "[^\r\n]+" do
    table.insert(header, line)
  end
else
  header = { "a" }
end

M.nvdash = {
  load_on_startup = false,
}

M.ui = {
  tabufline = {
    enabled = false,
    order = { "buffers" },
  },
}

-- M.ui = {
--       tabufline = {
--          lazyload = false
--      }
--}

return M
