---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "Enter command mode", opts = { nowait = true } },
  },
  v = {
    [";"] = { ":", "Enter command mode", opts = { nowait = true } },
  },
}
M.disabled = {
}
-- more keybinds!
M.code = {
  n = {
    ["<leader>gg"] = {"<cmd> LazyGit <CR>"},
    ["<leader>b"] = {
      function ()
        require('custom.configs.dapconfig').toggle_breakpoint()
      end,
      "Toggle breakpoint"
    },
    ["<f2>"] = {
      function ()
        vim.lsp.buf.rename()
      end,
      "Rename current symbol"
    },
    ["<f5>"] = {
      function ()
        require('custom.configs.dapconfig').continue()
      end,
      "Continue"
    },
    ["<f10>"] = {
      function ()
        require('custom.configs.dapconfig').step_over()
      end,
      "Step over"
    },
    ["<f11>"] = {
      function ()
        require('custom.configs.dapconfig').step_into()
      end,
      "Step into"
    },
    ["<f12>"] = {
      function ()
        vim.lsp.buf.definition()
      end,
      "Show the definition of current symbol"
    },
    ["<F12>"] = {
      function ()
        vim.lsp.buf.declaration()
      end,
      "Show the declaration of current symbol"
    },
  },
}
M.compiler = {
  n = {
    ["<f6>"] = { "<cmd>CompilerOpen<cr>", "Enter Compiler", opts = { noremap = true, silent = true } },
    ["<S-f6>"] = { "<cmd>CompilerStop<cr> .. <cmd>CompilerRedo<cr>", "Exit Compiler", opts = { noremap = true, silent = true } },
    ["<S-f7>"] = { "<cmd>CompilerToggleResults<cr>", "Exit Compiler", opts = { noremap = true, silent = true } },
  },
}
M.window = {
  n = {
    ["<A-K>"] = {"<cmd> resize +2 <cr>", "Increase window height"},
    ["<A-J>"] = {"<cmd> resize -2 <cr>", "Decrease window height"},
    ["<A-L>"] = {"<cmd> vertical resize -2 <cr>", "Decrease window width"},
    ["<A-H>"] = {"<cmd> vertical resize +2 <cr>", "Increase window width"},
  },
  i = {
    ["<A-K>"] = {"<esc><cmd> resize +2 <cr>==gi", "Increase window height"},
    ["<A-J>"] = {"<esc><cmd> resize -2 <cr>==gi", "Decrease window height"},
    ["<A-L>"] = {"<esc><cmd> vertical resize -2 <cr>==gi", "Decrease window width"},
    ["<A-H>"] = {"<esc><cmd> vertical resize +2 <cr>==gi", "Increase window width"},
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
  },
  v = {
    ["<A-k>"] = {":m '<-2<cr>gv=gv", "Move line up"},
    ["<A-j>"] = {":m '>+1<cr>gv=gv", "Move line down"},
  }
}
return M
