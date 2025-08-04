require("mason").setup()
require("mason-lspconfig").setup({
  -- Ensure these servers are installed
  ensure_installed = {
    "gopls",
    "lua_ls",
    "pyright",
    "rust_analyzer",
    "tailwindcss",
    "ts_ls",
    "yamlls",
    "r_language_server",
  },
})

local lspconfig = require("lspconfig")

-- Optional: Define on_attach and capabilities for better integration
local on_attach = function(client, bufnr)
  -- Example keymaps for LSP
  local bufopts = { noremap = true, silent = true, buffer = bufnr }
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
  vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
  vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, bufopts)
  vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, bufopts)
  -- Add more keymaps as needed
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
-- Optional: Enable completion with nvim-cmp (if you're using it)
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

-- List of servers to configure
local servers = {
  "gopls",
  "lua_ls",
  "pyright",
  "rust_analyzer",
  "tailwindcss",
  "ts_ls",
  "yamlls",
  "r_language_server",
}

-- Configure each server
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup({
    on_attach = on_attach,
    capabilities = capabilities,
    -- Add server-specific settings if needed
    settings = {
      -- Example for lua_ls
      lua_ls = {
        Lua = {
          diagnostics = { globals = { "vim" } }, -- Recognize vim global
          workspace = { checkThirdParty = false },
          telemetry = { enable = false },
        },
      },
      -- Add settings for other servers if needed
    },
  })
end
