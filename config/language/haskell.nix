{
  plugins.lsp.servers.hls = {
    enable = true;
    # hls requires ghc - this mutes the warning
    # correct ghc version should be specified per project
    installGhc = false;
  };
}
