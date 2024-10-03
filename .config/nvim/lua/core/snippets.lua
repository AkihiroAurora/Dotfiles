-- Prevent LSP from overwriting treesitter color settings
vim.highlight.priorities.semantic_tokens = 95

-- Appearance of diagnostics
vim.diagnostic.config {
  virtual_text = {
    prefix = '●',
  },
}

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
