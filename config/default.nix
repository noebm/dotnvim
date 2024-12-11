{...}: {
  imports = [
    ./colorscheme.nix
    ./completion.nix
    ./formatting.nix
    ./llm.nix
    ./lsp.nix
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

  # plugins.cmp-conventionalcommits.enable = true;

  plugins.rainbow-delimiters.enable = true;

  plugins.oil.enable = true;

  plugins.treesitter.enable = true;
  plugins.treesitter-context.enable = true;

  plugins.treesitter-refactor = {
    enable = true;
    # highlightCurrentScope.enable = true;
    highlightDefinitions.enable = true;
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
