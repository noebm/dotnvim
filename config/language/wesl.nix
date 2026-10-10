{ lib, ... }:
{
  filetype.extension.wesl = "wesl";
  plugins.lsp.servers.wgsl_analyzer.filetypes = lib.nixvim.mkRaw ''
    vim.list_extend(vim.deepcopy(vim.lsp.config("wgsl_analyzer").filetypes), { "wesl" })
  '';
}
