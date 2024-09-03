@@ -1 +1,56 @@
# My NVIM Configs

<br>

## Install


## Pre-install Requirements:
  * [ripgrep](https://github.com/BurntSushi/ripgrep#installation) is required for multiple [telescope](https://github.com/nvim-telescope/telescope.nvim#suggested-dependencies) pickers.


## Installation

 ### Attention
**You might want to [Backup](https://github.com/nvim-lua/kickstart.nvim?tab=readme-ov-file#FAQ) your previous configuration first(if any exists)**
- Then clear out your current NeoVim configs

<br>

```bash
# First delete and remove your current/previous neovim files and dirs.
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
```

<br>

**Then git clone this rep to your  `$XDG_CONFIG_HOME/nvim`, `~/.config/nvim`**

-  Linux and Mac install
```bash
git https://github.com/spL1n73r-xx/nvim-config.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
```

<br>


**Then Open Neovim**
And [lazy.nvim](https://lazy.folke.io/), will auto load all your plugins
```sh
nvim
```

### Post Install
**Neovim's configurations are located under the following paths, depending on your OS:**
All configurtion takes place here.

| OS    | PATH                                      |
| :---- | :---------------------------------------- |
| Linux | `$XDG_CONFIG_HOME/nvim`, `~/.config/nvim` |
| MacOS | `$XDG_CONFIG_HOME/nvim`, `~/.config/nvim` |



<br>
