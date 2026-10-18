{
  viAlias = false;
  vimAlias = true;

  options = {
    number = true;
    relativenumber = true;
    cursorline = true;
    wrap = true;
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
    name = "tokyonight";
    style = "night";
    transparent = false;
  };

  lsp = {
    enable = true;
    formatOnSave = false;
  };

  autocomplete = {
    blink-cmp = {
      enable = true;
      friendly-snippets.enable = true;

      setupOpts = {
        keymap.preset = "default";

        completion = {
          menu.auto_show = true;
          documentation.auto_show = false;
          ghost_text.enabled = false;
        };

        signature.enabled = true;
      };
    };
  };

  snippets.luasnip.enable = true;

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
}
