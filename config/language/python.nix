{ ... }:
{
  plugins.conform-nvim.settings.formatters_by_ft.python = [ "ruff_format" ];

  plugins.lsp.servers.ty.enable = true;
}
