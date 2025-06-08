return {
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require('catppuccin').setup {
        flavour = 'frappe',
        transparent_background = true,
        integrations = {
          mason = true,
          treesitter = true,
        },
        styles = {
          comments = { 'italic' },
        },
        custom_highlights = function(colors)
          return {
            Comment = { fg = colors.overlay2 },
            LineNr = { fg = colors.overlay1 },
          }
        end,
      }
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
