return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons", "justinhj/battery.nvim" },
  opts = function(_, opts)
    opts.theme = "nord"
    table.insert(opts.sections.lualine_y, {
      function()
        return require("battery").get_status_line()
      end,
    })
  end,
}
