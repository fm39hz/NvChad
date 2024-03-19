---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
}
M.disabled = {
}
-- more keybinds!
M.code = {
  n = {
    ["<leader>gg"] = {"<cmd> LazyGit <CR>"},
    ["<leader>b"] = {"<cmd> lua require('custom.configs.dapconfig').toggle_breakpoint() <CR>", "Toggle breakpoint"},
    ["<f5>"] = {"<cmd> lua require('custom.configs.dapconfig').continue() <CR>", "Continue"},
    ["<f10>"] = {"<cmd> lua require('custom.configs.dapconfig').step_over() <CR>", "Step over"},
    ["<f11>"] = {"<cmd> lua require('custom.configs.dapconfig').step_into() <CR>", "Step into"},
  },
}
M.window = {
  n = {
    ["<A-K>"] = {"<cmd> resize +2 <cr>", "Increase window height"},
    ["<A-J>"] = {"<cmd> resize -2 <cr>", "Decrease window height"},
    ["<A-L>"] = {"<cmd> vertical resize -2 <cr>", "Decrease window width"},
    ["<A-H>"] = {"<cmd> vertical resize +2 <cr>", "Increase window width"},
  }
}
M.moveLines = {
  n = {
    ["<A-k>"] = {"<cmd>m .-2<cr>==", "Move line up"},
    ["<A-j>"] = {"<cmd>m .+1<cr>==", "Move line down"},
  },
  i = {
    ["<A-k>"] = {"<esc><cmd>m .-2<cr>==gi", "Move line up"},
    ["<A-j>"] = {"<esc><cmd>m .+1<cr>==gi", "Move line down"},
  }
}
return M
