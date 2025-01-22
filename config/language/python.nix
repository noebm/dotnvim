{...}: {
  plugins.none-ls.sources.formatting = {
    black.enable = true;

    isort.enable = true;
    isort.settings = {
      extra_args = ["--profile" "black"];
    };
  };

  plugins.lsp.servers.pyright.enable = true;
}
