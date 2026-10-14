{ inputs, ... }:

{
  import = [
    inputs.nvf.homeManagerModules.default
  ];

  programs.nvf.enable = true;
}
