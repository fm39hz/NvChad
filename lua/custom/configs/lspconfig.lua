local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "clangd" }

require("noice").setup({
  lsp = {
    overrides = {
      ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
      ["vim.lsp.util.stylize_markdown"] = true,
      ["cmp.entry.get_documentation"] = true,
    },
  },
  presets = {
    bottom_search = true, -- use a classic bottom cmdline for search
    command_palette = true, -- position the cmdline and popupmenu together
    long_message_to_split = true, -- long messages will be sent to a split
    inc_rename = false, -- enables an input dialog for inc-rename.nvim
    lsp_doc_border = false, -- add a border to hover docs and signature help
  },
})

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
-- C# lsp config
local pid = vim.fn.getpid()
local omnisharp_bin = "/home/fm39hz/.local/share/nvim/mason/packages/omnisharp/libexec/OmniSharp.dll"

local omnisharp_extended = require("omnisharp_extended")
lspconfig.omnisharp.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "dotnet", omnisharp_bin, "--languageserver", "--hostPID", tostring(pid) },
  handlers = {
    ["textDocument/definition"] = omnisharp_extended.handler,
  },
  -- OmniSharp options
  enable_editorconfig_support = true,
  enable_roslyn_analyzers = false,
  organize_imports_on_format = true,
  sdk_include_prereleases = true,
  analyze_open_documents_only = false,
  use_tabs = true,
  tab_size = 4,
  indentation_size = 1,
}
lspconfig.csharp_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

-- C++ lspconfig
lspconfig.clangd.setup {
  on_attach = on_attach,
  cmd = {"clangd"},
  filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" }
}
-- lspconfig.pyright.setup { blabla}
