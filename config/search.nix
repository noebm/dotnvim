{
  plugins.telescope = {
    enable = true;

    keymaps = {
      "<leader>sd" = {
        action = "diagnostics";
        mode = "n";
        options.desc = "[S]earch [D]iagnostics";
      };
      "<leader>sh" = {
        mode = "n";
        action = "help_tags";
        options.desc = "[S]earch [H]elp";
      };
      "<leader>sk" = {
        mode = "n";
        action = "keymaps";
        options.desc = "[S]earch [K]eymaps";
      };
      "<leader>ss" = {
        action = "builtin";
        options.desc = "[S]earch [S]elect Telescope";
      };
      "<leader>sw" = {
        action = "grep_string";
        options.desc = "[S]earch current [W]ord";
      };
      # would be useful if i could use git grep ... but I cannot find that
      # "<leader>sg" = {
      #   action = "git_files";
      #   options.desc = "[S]earch [G]it Files";
      # };
      "<leader>sf" = {
        action = "find_files";
        options.desc = "[S]earch [F]iles";
      };
      "<leader>st" = {
        action = "treesitter";
        options.desc = "[S]earch [T]reesitter";
      };
      "<leader>sb" = {
        action = "buffers";
        options.desc = "[S]earch [B]uffers";
      };
    };
  };
}
