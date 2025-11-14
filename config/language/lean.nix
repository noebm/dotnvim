{
  plugins.lean.enable = true;

  # use lsp from project env
  plugins.lsp.servers.leanls = {
    enable = true;
    # disable package
    package = null;
    # use project env
    settings.lsp.cmd = [
      "lake"
      "exe"
      "lean-language-server"
    ];
  };

  # TODO: Can this be lazy loaded when lean & telescope is in scope?
  files."ftplugin/lean.lua".keymaps = [
    {
      action = "<cmd>Telescope loogle<CR>";
      key = "<leader>sl";
      options = {
        unique = true;
        desc = "Search Loogle";
      };
    }
  ];

}
