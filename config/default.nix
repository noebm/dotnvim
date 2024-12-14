{...}: {
  imports = [
    ./colorscheme.nix
    ./completion.nix
    ./filesystem.nix
    ./formatting.nix
    ./git.nix
    ./llm.nix
    ./lsp.nix
    ./project.nix
    ./language/rust.nix
    ./language/haskell.nix
    ./language/nix.nix
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

  plugins.illuminate = {
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
