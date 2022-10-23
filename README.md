# Dotfiles

## Installation

_clone the repository_
`git clone git@github.com/sagarPakhrin/.dotfiles`

### Manual Setup

```bash
ln -sf ~/dotfiles/bash/.bashrc ~/.bashrc
ln -sf ~/dotfiles/zsh/.zshrc ~/.zshrc
...
```

### Automatic Setup Using [Stow](https://www.gnu.org/software/stow/) _(recommended)_

_install stow_

`sudo apt install stow`

```bash

#cd into the dotfiles directory
cd ~/.dotfiles

# setup the symlinks
stow -vSt ~ bash
stow -vSt ~ zsh
# ...
```

## Neovim 

I've only added minimum configurations to get started with neovim. with lsp support.  
Additional capabilities include:
- Automatic imports
- Format on save ( prettier )
- Organize imports

### Installation
```bash
sudo apt install neovim

cd ~/.dotfiles
stow -vSt ~ zsh
```

### Post installation steps

*Launch neovim*  
`neovim`

*Install neovim plugins with packer*  
`:PackerInstall`


> :exclamation: **Currrently lsp-config and mason has not be confirured install lsp servers automatically**: To install
> lsp servers manually, run `:Mason` and install desired servers.

**If you want to install additional lsp servers, add additional servers to the servers table in
`~/.dotfiles/neovim/.config/nvim/lua/config/lsp/init.lua`  **
```lua
local servers = { "jsonls", "sumneko_lua", "tsserver", "tailwindcss", ... }
```

For telescope to work better, install these plugins
`bash
sudo apt install fd-find
sudo apt install ripgrep
`

