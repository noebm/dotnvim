{...}: {
  imports = [
    ./colorscheme.nix
    ./llm.nix
    ./language/rust.nix
    ./language/haskell.nix
    ./language/python.nix
  ];

  plugins.web-devicons.enable = true;

  globals = {
    mapleader = " ";
    maplocalleader = ",";
  };

  clipboard = {
    register = "unnamedplus";
    providers.wl-copy.enable = true;
  };

  opts = {
    # shortmess += "c";

    number = true;
    relativenumber = true;
    shiftround = true;
    shiftwidth = 2;
    expandtab = true;
    list = true;
  };

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
  # plugins.cmp-conventionalcommits.enable = true;

  plugins.none-ls = {
    enable = true;
    # process delay in ms?
    settings.debounce = 100;

    enableLspFormat = true;
    sources.formatting.alejandra.enable = true;
  };

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

  plugins.lsp-format.enable = true;

  plugins.rainbow-delimiters.enable = true;

  plugins.oil.enable = true;

  plugins.treesitter.enable = true;
  plugins.treesitter-context.enable = true;

  plugins.treesitter-refactor = {
    enable = true;
    # highlightCurrentScope.enable = true;
    highlightDefinitions.enable = true;
  };

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

  # noice seems to cause delay [nixos-23.11]
  plugins.noice.enable = true;

  plugins.nvim-autopairs.enable = true;

  plugins.nix.enable = true;
  plugins.fugitive.enable = true;
  plugins.gitsigns = {
    enable = true;
    settings.attach_to_untracked = false;
  };

  plugins.illuminate = {
    enable = true;
  };

  keymaps = [
    {
      action = "<cmd>NvimTreeToggle<CR>";
      key = "<leader>p";
      options = {
        unique = true;
        desc = "Toggle project tree";
      };
    }
  ];
  plugins.nvim-tree = {
    enable = true;
  };

  plugins.which-key = {
    enable = true;
  };

  plugins.lualine = {
    enable = true;
  };

  # random useful stuff
  # Refactor blocks / variable using :Refactor
  plugins.refactoring.enable = true;
}
