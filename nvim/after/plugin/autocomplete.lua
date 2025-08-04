-- Check if nvim-cmp is installed
local has_cmp, cmp = pcall(require, "cmp")
if has_cmp then
  cmp.setup({
    -- Define sources for completion
    sources = {
      { name = "nvim_lsp" }, -- LSP completions
      { name = "buffer" }, -- Optional: completions from buffer
      { name = "path" }, -- Optional: filesystem path completions
    },
    -- Define keymappings
    mapping = cmp.mapping.preset.insert({
      ["<C-Space>"] = cmp.mapping.complete(), -- Trigger completion
      ["<C-n>"] = cmp.mapping.confirm({ select = true }), -- Confirm selection
      ["<C-e>"] = cmp.mapping.abort(), -- Cancel completion
      ["<C-j>"] = cmp.mapping.select_next_item(), -- Next suggestion
      ["<C-p>"] = cmp.mapping.select_prev_item(), -- Previous suggestion
    }),
    -- Optional: Enable snippet support (if using snippets)
    snippet = {
      expand = function(args)
        -- Requires a snippet plugin like luasnip or vsnip
        require("luasnip").lsp_expand(args.body) -- Example with luasnip
      end,
    },
  })
  -- Optional: Additional completion sources
  require("cmp").setup.cmdline("/", {
    sources = {
      { name = "buffer" },
    },
  })
  require("cmp").setup.cmdline(":", {
    sources = {
      { name = "path" },
      { name = "cmdline" },
    },
  })
else
  print("nvim-cmp not installed")
end
