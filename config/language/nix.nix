{pkgs, ...}: {
  # filetype detection, indentation, syntax highlighting
  plugins.nix.enable = true;

  plugins.lsp.servers.nil_ls = {
    enable = true;
    settings = {
      formatting.command = ["nixfmt"];
      # get completion info from flake inputs?
      flake.autoEvalInputs = true;
    };
  };

  # use `nixfmt` for formatting
  extraPackages = [pkgs.nixfmt-rfc-style];
}
