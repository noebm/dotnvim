{
  plugins = {
    cmp-snippy.enable = true;
    cmp-nvim-lsp.enable = true;
    # cmp-nvim-lsp-document-symbol.enable = true;
    # cmp-nvim-lsp-signature-help.enable = true;
    cmp-buffer.enable = true;
    # cmp-cmdline.enable = true;
    cmp-path.enable = true;
    cmp-treesitter.enable = true;
    cmp = {
      enable = true;

      settings = {
        sources = [
          {name = "snippy";}
          {name = "nvim_lsp";}
          # {name = "nvim_lsp_document_symbol";}
          # {name = "nvim_lsp_signature_help";}
          {name = "buffer";}
          # {name = "cmdline";}
          {name = "path";}
          {name = "treesitter";}
        ];

        mapping = {
          "<CR>" = "cmp.mapping.confirm({ select = true })";
          "<Tab>" = "cmp.mapping.select_next_item()";
          "<S-Tab>" = "cmp.mapping.select_prev_item()";
        };

        snippet.expand = "function(args) require('snippy').expand_snippet(args.body) end";
      };
    };
  };
}
