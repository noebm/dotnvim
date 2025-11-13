{ ... }:
{
  imports = [
    ./colorscheme.nix
    ./completion.nix
    ./filesystem.nix
    ./formatting.nix
    ./git.nix
    ./llm.nix
    ./lsp.nix
    ./project.nix
    ./search.nix
    ./language/rust.nix
    ./title.nix
    ./language/lean.nix
    # ./language/kotlin.nix
    ./language/haskell.nix
    ./language/nix.nix
    ./language/python.nix
    ./language/godot.nix
  ];

  plugins.web-devicons.enable = true;
  plugins.mini = {
    enable = true;
    modules.icons.style = "glyph";
  };

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
    swapfile = false;
  };

  # plugins.cmp-conventionalcommits.enable = true;

  plugins.rainbow-delimiters.enable = true;

  plugins.treesitter = {
    enable = true;
    settings.highlight.enable = true;
  };
  # https://github.com/nvim-treesitter/nvim-treesitter/issues/5501
  # plugins.treesitter-context.enable = true;

  plugins.treesitter-refactor = {
    enable = true;
    # highlightCurrentScope.enable = true;
    settings.highlight_definitions.enable = true;
  };

  # plugins.noice = {
  #   enable = true;
  #   settings.lsp.override = {
  #     "cmp.entry.get_documentation" = true;
  #     "vim.lsp.util.convert_input_to_markdown_lines" = true;
  #     "vim.lsp.util.stylize_markdown" = true;
  #   };
  # };

  # Noice needs `snacks.nvim` or `nvim-notify` for routes using the `notify` view
  # plugins.snacks = {
  #   enable = true;
  #   settings = {
  #     notifier = {
  #       enabled = true;
  #       timeout = 3000;
  #     };
  #   };
  # };

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
  # plugins.refactoring.enable = true;
}
