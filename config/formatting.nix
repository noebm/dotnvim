{
  # default format provider via lsp
  plugins.lsp-format.enable = true;

  # some plugins dont work with lsp-format
  plugins.none-ls = {
    enable = true;
    # process delay in ms?
    settings.debounce = 100;

    enableLspFormat = true;
    sources.formatting.alejandra.enable = true;
  };
}
