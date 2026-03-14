return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    config = function()
        require('nvim-treesitter').setup({
            ensure_installed = { "javascript", "typescript", "c", "lua", "rust", "go", "vimdoc" },
            auto_install = true,
            highlight = {
                enable = true,
            },
        })
    end,
}
