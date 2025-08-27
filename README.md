# Dotfiles for Linux

## Dependencies

### Terminal Environment

- [Fish Shell](https://github.com/fish-shell/fish-shell)
  - Better Shell, replaces Bash
  - `sudo dnf install fish`
- [tmux](https://github.com/tmux/tmux/wiki)
  - Terminal Multiplexer
  - `sudo dnf install tmux`
- [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm)
  - Plugin Manager for Tmux
  - all plugins are installed via `~/.tmux.conf`
  - `git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`
- [NerdFont](https://www.nerdfonts.com/font-downloads)
  - Terminal Font with support for icons
  - download and copy to `/usr/share/fonts`

### Editor Environment

- [NeoVim](https://neovim.io/)
  - Text Editor, replaces Vim
  - `sudo dnf install -y neovim python3-neovim`
- [LazyVim](https://www.lazyvim.org/)
  - Starterkit to improve Neovim Experience
  - `git clone https://github.com/LazyVim/starter ~/.config/nvim`
- [Nvim Tmux Navigator](https://github.com/alexghergh/nvim-tmux-navigation)
  - allows seemless navigation between nvim and tmux
  - `return {
  "christoomey/vim-tmux-navigator",
  cmd = {
    "TmuxNavigateLeft",
    "TmuxNavigateDown",
    "TmuxNavigateUp",
    "TmuxNavigateRight",
    "TmuxNavigatePrevious",
    "TmuxNavigatorProcessList",
  },
  keys = {
    { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
    { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
    { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
    { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
    { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
  },
}` into `~/.config/nvim/lua/plugins/nvim-tmux-navigator.lua`
- [Lualine](https://github.com/nvim-lualine/lualine.nvim)
  - modiefies the NeoVim Statusline
  - `return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  config = function(_, opts)
    require("lualine").setup({
      options = {
        section_separators = { left = "", right = "" },
        component_separators = { left = "", right = "" },
      },
    })
  end,
}` into `~/.config/nvim/lua/plugins/lualine.lua`

### Tools

- [LayzGit](https://github.com/jesseduffield/lazygit)
  - Interface for git
  - `sudo dnf copr enable dejan/lazygit`
  - `sudo dnf install lazygit`
- [fzf](https://github.com/junegunn/fzf)
  - fuzzy finder for the terminal
  - `sudo dnf install fzf`
- [fd](https://github.com/sharkdp/fd)
  - replaces `find`
  - `sudo dnf install fd-find`
- [ripgrep](https://github.com/BurntSushi/ripgrep?tab=readme-ov-file)
  - replaces `ripgrep`
  - `sudo dnf install ripgrep`
- [bat](https://github.com/sharkdp/bat)
  - replaces `cat`
  - `sudo dnf install bat`

## Instalation

just execute the `.dotfiles/use_dotfiles.sh` to create symlinks to this repo
