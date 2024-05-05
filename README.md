# Neovim Installation

**This repo is updated to work with Neovim 0.8.**

## Try out this config

Make sure to remove or move your current `nvim` directory

```
git clone https://github.com/gvnadir/nvim.git ~/.config/nvim
```

Run `nvim` and wait for the plugins to be installed. (You will notice treesitter pulling in a bunch of parsers the next time you open Neovim) 

**NOTE** [Mason](https://github.com/williamboman/mason.nvim) is now used to install and manage LSP servers, DAP servers, linters, and formatters via the `:Mason` command.

### Upgrade to latest release

Assuming you [built from source](https://github.com/neovim/neovim/wiki/Building-Neovim#quick-start) (**the first 2 steps of the page are mandatory**), `cd` into the folder where you cloned `neovim` and run the following commands. 
```
git pull
make distclean && make CMAKE_BUILD_TYPE=Release
git checkout release-0.9
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

## Preparing to install dependencies

```
sudo apt update
```

## install nodejs and npm

```
sudo apt install nodejs
sudo apt install npm
```

## Install pip

```
sudo apt install python3-pip
```

## Install ripgrep to make grep work

```
sudo apt install ripgrep
```

[ripgrep](https://github.com/BurntSushi/ripgrep#installation)

## Install prettier

```
npm install --global prettier
```

Next we need to install python support (node is optional)

- Neovim python support

  ```
  pip install pynvim
  ```

- Neovim node support

  ```
  npm i -g neovim
  ```

## Install a Nerd Font

https://www.nerdfonts.com/font-downloads

## Sources

https://github.com/LunarVim/nvim-basic-ide
