{
  plugins.nvim-tree.enable = true;

  keymaps = [
    {
      action = "<cmd>NvimTreeToggle<CR>";
      key = "<leader>p";
      options = {
        unique = true;
        desc = "Toggle project tree";
      };
    }
  ];
}
