{ ... }:
{
  # Python's indenter needs Vim syntax groups to ignore braces inside strings.
  plugins.treesitter.highlight.enableVimSyntax = [ "python" ];

  plugins.conform-nvim.settings.formatters_by_ft.python = [ "ruff_format" ];

  plugins.lsp.servers.ty.enable = true;
}
