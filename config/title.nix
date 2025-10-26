{
  opts = {
    title = true;
  };

  autoCmd = [
    # Default value for setting title on startup.
    {
      event = [ "VimEnter" ];
      desc = "Set default title at startup";
      callback.__raw = ''
        function()
          vim.o.titlestring = "Neovim"
        end
      '';
    }
    {
      event = [ "BufEnter" ];
      desc = "Set window title dynamically based on project context";
      callback.__raw = ''
        function()
          local cwd = vim.fn.getcwd()
          local file = vim.fn.expand("%:t")
          local fullpath = vim.fn.expand("%:p")

          -- Try to find git root
          local git_root = vim.fn.systemlist("git rev-parse --show-toplevel")[1]
          if git_root == nil or git_root == "" then
            local found = vim.fs.find({".git", ".hg", "package.json"}, { upward = true, path = fullpath })[1]
            if found then
              git_root = vim.fs.dirname(found)
            else
              git_root = cwd
            end
          end

          local title
          if git_root and git_root ~= "" and fullpath:find(git_root, 1, true) then
            local project = vim.fn.fnamemodify(git_root, ":t")
            local rel = vim.fn.fnamemodify(fullpath, ":." .. git_root)
            title = string.format("%s — %s — Neovim", rel, project)
          else
            title = string.format("%s — Neovim", file)
          end

          vim.o.titlestring = title
        end
      '';
    }
  ];
}
