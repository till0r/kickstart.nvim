return {
  'https://git.sr.ht/~whynothugo/lsp_lines.nvim',
  event = 'VeryLazy',
  opts = true,
  config = function()
    require('lsp_lines').setup()
    vim.diagnostic.config {
      virtual_text = false, -- Disables the default virtual text behind EOL
    }
  end,
}
