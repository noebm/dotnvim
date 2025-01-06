{pkgs, ...}: {
  plugins = {
    rustaceanvim.enable = true;
    rustaceanvim.settings = {
      # check types as if all features are enabled
      server.default_settings.rust-analyzer.cargo.features = "all";
    };

    crates.enable = true;
  };

  # FIXME separate formatter
  plugins.conform-nvim = {
    enable = true;
    settings = {
      format_on_save = {
        lspFallback = true;
        timeoutMs = 500;
      };
      notify_on_error = true;
      formatters_by_ft = {
        rust = ["rustfmt"];
      };
    };
  };

  plugins.treesitter.settings.ensure_installed = ["rust"];

  extraPackages = [pkgs.rustfmt];
}
