{ ... }:

{
  programs.nvf = {
    enable = true;

    settings.vim = {
      viAlias = false;
      vimAlias = false;

      options = {
        number = true;
        relativenumber = true;
        cursorline = true;
        wrap = false;
        tabstop = 2;
        shiftwidth = 2;
        expandtab = true;
        smartindent = true;
        ignorecase = true;
        smartcase = true;
        termguicolors = true;
        scrolloff = 8;
      };

      theme = {
        enable = true;
        name = "catppuccin";
        style = "mocha";
        transparent = false;
      };

      autopairs.nvim-autopairs.enable = true;
      comments.comment-nvim.enable = true;
      statusline.lualine.enable = true;
      telescope.enable = true;
      filetree.neo-tree.enable = true;

      git.gitsigns.enable = true;

      languages = {
        enableTreesitter = true;
        nix.enable = true;
        bash.enable = true;
        lua.enable = true;
        markdown.enable = true;
        json.enable = true;
        python.enable = true;
        clang.enable = true;
      };
    };
  };
}
