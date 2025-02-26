return {
  "adoolaard/nvim-cmp-laravel",
  formatting = {
    fields = { "abbr", "kind", "menu" },
    format = function(entry, vim_item)
      -- Custom icons for specific item types
      local custom_icons = {
        copilot = icons.misc.copilot,
        laravel_routes = icons.misc.laravel_routes,
        Text = icons.ui.FindText,
      }

      -- Determine the correct icon
      local kind_label = vim_item.kind
      if entry.source.name == "copilot" then
        kind_label = "copilot"
        vim_item.kind_hl_group = "CopilotSuggestion" -- Highlight group for copilot suggestions
      elseif entry.source.name == "laravel_routes" then
        kind_label = "laravel_routes"
        vim_item.kind_hl_group = "LaravelRoutesSuggestion" -- Highlight group for laravel_routes suggestions
      end
      vim_item.kind = custom_icons[kind_label] or icons.kind[kind_label] or kind_label

      -- Set the 'menu' field with the source of the suggestion
      vim_item.menu = "(" .. (source_map[entry.source.name] or entry.source.name) .. ")"

      -- The rest remains unchanged
      -- Special handling for colors
      if vim_item.kind == icons.kind.Color and entry.completion_item.documentation then
        local _, _, r, g, b = string.find(entry.completion_item.documentation, "^rgb%((%d+), (%d+), (%d+)")
        if r then
          local color = string.format("%02x", r) .. string.format("%02x", g) .. string.format("%02x", b)
          local group = "Tw_" .. color
          if vim.fn.hlID(group) < 1 then
            vim.api.nvim_set_hl(0, group, { fg = "#" .. color })
          end
          vim_item.kind_hl_group = group
          return vim_item
        end
      end

      return vim_item
    end,
  },
}
