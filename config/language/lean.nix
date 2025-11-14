{
  plugins.lean.enable = true;

  # TODO: Can this be lazy loaded when lean & telescope is in scope?
  files."ftplugin/lean.lua".keymaps = [
    {
      action = "<cmd>Telescope loogle<CR>";
      key = "<leader>sl";
      options = {
        unique = true;
        desc = "[S]earch [L]oogle";
      };
    }
  ];

}
