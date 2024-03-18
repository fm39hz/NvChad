---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>gg"] = {"<cmd> LazyGit <CR> "}
  },
}
M.disabled = {
}
-- more keybinds!
M.debug = {
  n = {
    ["<leader>b"] = {"<cmd> lua require('custom.configs.dapconfig').toggle_breakpoint() <CR>", desc = "Toggle breakpoint"},
    ["<f5>"] = {"<cmd> lua require('custom.configs.dapconfig').continue() <CR>", desc = "Continue"},
    ["<f10>"] = {"<cmd> lua require('custom.configs.dapconfig').step_over() <CR>", desc = "Step over"},
    ["<f11>"] = {"<cmd> lua require('custom.configs.dapconfig').step_into() <CR>", desc = "Step into"},
  },
}
M.window = {
  n = {
    ["<C-k>"] = {"<cmd> resize +2 <cr>", desc = "Increase window height"},
    ["<C-j>"] = {"<cmd> resize -2 <cr>", desc = "Decrease window height"},
    ["<C-l>"] = {"<cmd> vertical resize -2 <cr>", desc = "Decrease window width"},
    ["<C-h>"] = {"<cmd> vertical resize +2 <cr>", desc = "Increase window width"},
    }
  }
M.moveLines = {
  n = {
    ["<A-k>"] = {"<cmd>m .-2<cr>==", desc = "Move line up"},
    ["<A-j>"] = {"<cmd>m .+1<cr>==", desc = "Move line down"},
    },
  i = {
    ["<A-k>"] = {"<esc><cmd>m .-2<cr>==gi", desc = "Move line up"},
    ["<A-j>"] = {"<esc><cmd>m .+1<cr>==gi", desc = "Move line down"},
    }
  }
return M
