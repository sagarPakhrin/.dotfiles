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
stow -vSt ~ nvim
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

_Launch neovim_  
`neovim`

_Install neovim plugins with packer_  
`:PackerInstall`

> Currrently lsp-config and mason has not be confirured install lsp servers automatically:  
> To install lsp servers manually, execute `:Mason` and install desired servers.

<br/>
If you want to install additional lsp servers, add additional servers to the servers table in
`~/.dotfiles/neovim/.config/nvim/lua/config/lsp/init.lua`

```lua
local servers = { "jsonls", "sumneko_lua", "tsserver", "tailwindcss", ... }
```

### Additional packages

Telescope seems to slow when configurations are added to ignore folders like `node_modules`, instead install these plugins on your system and telescope will pick these up and ignore everyting in .gitignore

```bash
sudo apt install fd-find
sudo apt install ripgrep
```

For the web-dev icons to work. You need to install [nerd-fonts](https://github.com/ryanoasis/nerd-fonts#option-3-install-script)
```bash
git clone --filter=blob:none --sparse git@github.com:ryanoasis/nerd-fonts
cd nerd-fonts
git sparse-checkout add patched-fonts/NerdFontsSymbolsOnly
./install.sh
```
restart the terminal

## Neovim Key Mappings

### Copilot
for completion: `ctrl + shift + j` => `<C-J>`
for Next suggestion: `Alt + ]` => `<M-]>`
for Previous suggestion: `Alt + [` => `<M-[>`
