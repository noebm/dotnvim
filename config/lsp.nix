{
  plugins.lsp = {
    enable = true;
    # causes 2.16.2 nix dependency
    # which has a CVE
    # servers.nixd.enable = true;
    servers.bashls.enable = true;
    servers.nil_ls.enable = true;
    # servers.ccls.enable = true;

    keymaps = {
      diagnostic = {
        "[d" = {
          action = "goto_next";
          desc = "Goto next diagnostic";
        };
        "]d" = {
          action = "goto_prev";
          desc = "Goto previous diagnostic";
        };
        "gl" = {
          action = "open_float";
          desc = "Open float";
        };
      };

      lspBuf = {
        K = {
          action = "hover";
          desc = "Hover";
        };
        gr = {
          action = "references";
          desc = "Goto references";
        };
        gd = {
          action = "definition";
          desc = "Goto definition";
        };
        gi = {
          action = "implementation";
          desc = "Goto implementation";
        };
        gt = {
          action = "type_definition";
          desc = "Type definition";
        };
        gs = {
          action = "signature_help";
          desc = "Signature help";
        };
        "<F2>" = {
          action = "rename";
          desc = "Rename variable";
        };
      };
    };
  };
  # lsp diagnostics
  plugins.trouble = {
    enable = true;
    settings = {
      modes = {
        diagnostics = {
          auto_open = true;
          auto_close = true;
        };
      };
    };
  };
}
