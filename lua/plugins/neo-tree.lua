return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = {
      position = "right", -- Correct position to the right
      width = 30,
    },
    filesystem = {
      filtered_items = {
        visible = true, -- Show hidden files
        hide_dotfiles = false, -- Set to `true` to hide dotfiles
        use_libuv_file_watcher = true, -- Optional: for real-time updates
        follow_current_file = true, -- Follow the current file in the tree
      },
    },
  },
}
