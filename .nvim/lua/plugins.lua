-- vim-plug
vim.cmd([[
call plug#begin()
Plug 'ntk148v/vim-horizon'
Plug 'preservim/nerdtree'
call plug#end()
]])

-- NERDTree settings (only for non-VSCode)
if vim.g.vscode == nil then
  vim.keymap.set('n', '<C-t>', ':NERDTreeToggle<CR>')
  -- Start NERDTree when Vim is started without file arguments.
  vim.api.nvim_create_autocmd('StdinReadPre', {
    pattern = '*',
    callback = function()
      vim.g.std_in = 1
    end
  })
  vim.g.NERDTreeQuitOnOpen = 1
end

-- Colorscheme
vim.cmd('colorscheme horizon')

-- lightline
vim.g.lightline = {
  colorscheme = 'horizon'
}
