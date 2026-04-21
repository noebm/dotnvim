{ config, ... }:
{
  plugins.lsp.servers.kotlin_language_server.enable = true;

  plugins.treesitter.grammarPackages = with config.plugins.treesitter.package.builtGrammars; [
    kotlin
  ];
}
