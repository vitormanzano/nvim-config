return {
  "Mofiqul/dracula.nvim",
  -- Set a high priority to ensure the colorscheme loads before other UI plugins
  priority = 1000,
  -- Make the transparency plugin a dependency to ensure it's available
  dependencies = { "xiyaowong/transparent.nvim" },
  
  config = function()
    -- Enable Dracula's own transparency setting (this is good practice)
    vim.g.dracula_transparent_bg = true

    -- Load the colorscheme
    vim.cmd.colorscheme("dracula")

    -- Enable transparent.nvim AFTER the colorscheme is set.
    -- This command ensures transparency is applied correctly over the theme.
    vim.cmd.TransparentEnable()
  end,
}
