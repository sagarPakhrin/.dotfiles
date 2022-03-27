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
