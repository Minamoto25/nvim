return {
    {
        'neovim/nvim-lspconfig',
        dependencies = {
            { 'williamboman/mason.nvim', opts = {}},
            { 'williamboman/mason-lspconfig.nvim', opts = {}},
        },
        config = function()
            vim.keymap.set('n', 'gd', require('telescope.builtin').lsp_definitions)
            vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references)
            vim.keymap.set('n', 'gI', require('telescope.builtin').lsp_implementations)
            vim.keymap.set('n', '<leader>so', require('telescope.builtin').lsp_document_symbols)
            vim.keymap.set('n', '<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols)
            vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename)
            vim.keymap.set('n', 'gD', vim.lsp.buf.declaration)
        end
    },
    {'hrsh7th/nvim-cmp'}, -- Autocompletion plugin
    {'hrsh7th/cmp-nvim-lsp'}, -- LSP source for nvim-cmp
    {'saadparwaiz1/cmp_luasnip'}, -- Snippets source for nvim-cmp
    {'L3MON4D3/LuaSnip'}, -- Snippets plugin
}
