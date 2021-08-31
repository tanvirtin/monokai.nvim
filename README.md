# Neovim Monokai

Monokai Theme for Neovim with tree-sitter support

<img width="1792" alt="monokai nvim" src="https://user-images.githubusercontent.com/25164326/121434903-0562f180-c94c-11eb-952d-df702d92fe25.png">

## Supported Monokai Flavours (colorscheme alias)
- Monokai (monokai)
- Monokai Pro (monokai_pro)
- Monokai Soda (monokai_soda)

## Prerequisites:

Neovim >= 0.5.

## Installation
| Plugin Manager                                       | Command                                                                              |
|------------------------------------------------------|--------------------------------------------------------------------------------------|
| [Packer](https://github.com/wbthomason/packer.nvim)  | `use 'tanvirtin/monokai.nvim'`                                                       |
| [Vim-plug](https://github.com/junegunn/vim-plug)     | `Plug 'tanvirtin/monokai.nvim'`                                                      |
| [NeoBundle](https://github.com/Shougo/neobundle.vim) | `NeoBundle 'tanvirtin/monokai.nvim'`                                                 |
| [Vundle](https://github.com/VundleVim/Vundle.vim)    | `Bundle 'tanvirtin/monokai.nvim'`                                                    |
| [Pathogen](https://github.com/tpope/vim-pathogen)    | `git clone https://github.com/tanvirtin/monokai.nvim.git ~/.vim/bundle/monokai.nvim` |
| [Dein](https://github.com/Shougo/dein.vim)           | `call dein#add('tanvirtin/monokai.nvim')`                                            |

## Usage:

In VimL:

```viml
syntax on
colorscheme monokai
set termguicolors
```

In Lua:

```lua
require('monokai')
vim.cmd('colorscheme monokai')
```
