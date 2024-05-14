---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "everforest",
  theme_toggle = { "gruvchad", "everforest" },
  telescope = {
    style = "bordered"
  },
  nvdash = {
    load_on_startup = true
  },
  statusline = {
    theme = "vscode_colored",
  },
  hl_override = highlights.override,
  hl_add = highlights.add,
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
