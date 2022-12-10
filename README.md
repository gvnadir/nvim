# Neovim Installation

**This repo is updated to work with Neovim 0.8.**

## Try out this config

Make sure to remove or move your current `nvim` directory

```
git clone https://github.com/gianlucanadir/nvim.git ~/.config/nvim
```

Run `nvim` and wait for the plugins to be installed. (You will notice treesitter pulling in a bunch of parsers the next time you open Neovim) 

**NOTE** [Mason](https://github.com/williamboman/mason.nvim) is now used to install and manage LSP servers, DAP servers, linters, and formatters via the `:Mason` command.

### Upgrade to latest release

Assuming you [built from source](https://github.com/neovim/neovim/wiki/Building-Neovim#quick-start) (**the first 2 steps of the page are mandatory**), `cd` into the folder where you cloned `neovim` and run the following commands. 
```
git pull
make distclean && make CMAKE_BUILD_TYPE=Release
git checkout v0.8.0
sudo make install
nvim -v
```

## Get healthy

Open `nvim` and enter the following:

```
:checkhealth
```

This will help you check the missing packages.

**NOTE** 
- use it in case of errors
- make sure you have [node](https://nodejs.org/en/) installed

## Install last version of nodejs with nvm

https://github.com/nvm-sh/nvm

```
nvm install node
```

## Install a Nerd Font

https://www.nerdfonts.com/font-downloads

## Sources

https://github.com/LunarVim/Neovim-from-scratch  