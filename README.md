# Neovim Monokai

Monokai Theme for Neovim with tree-sitter support

<img width="1792" alt="monokai nvim" src="https://user-images.githubusercontent.com/25164326/121434903-0562f180-c94c-11eb-952d-df702d92fe25.png">

## Supported Monokai Flavours
- Monokai (monokai)
- Monokai Pro (monokai_pro)
- Monokai Soda (monokai_soda)
- Monokai Ristretto (monokai_ristretto)

## Prerequisites

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

## Usage

In VimL:

```viml
syntax on
colorscheme monokai
colorscheme monokai_pro
colorscheme monokai_soda
colorscheme monokai_ristretto
```

In Lua:

```lua
require('monokai').setup {}
require('monokai').setup { palette = require('monokai').pro }
require('monokai').setup { palette = require('monokai').soda }
require('monokai').setup { palette = require('monokai').ristretto }
```

## Customization

It is possible to customize Monokai theme with `setup` function (only in Lua). Passed argument will override default configuration values witch are:

```lua
{
    palette = {
        name = 'monokai',
        base1 = '#272a30',
        base2 = '#26292C',
        base3 = '#2E323C',
        base4 = '#333842',
        base5 = '#4d5154',
        base6 = '#9ca0a4',
        base7 = '#b1b1b1',
        border = '#a1b5b1',
        brown = '#504945',
        white = '#f8f8f0',
        grey = '#8F908A',
        black = '#000000',
        pink = '#f92672',
        green = '#a6e22e',
        aqua = '#66d9ef',
        yellow = '#e6db74',
        orange = '#fd971f',
        purple = '#ae81ff',
        red = '#e95678',
        diff_add = '#3d5213',
        diff_remove = '#4a0f23',
        diff_change = '#27406b',
        diff_text = '#23324d',
    },
    custom_hlgroups = {},
}
```

An example of this would be as follows:

```lua
local monokai = require('monokai')
local palette = monokai.classic
monokai.setup {
    palette = {
        diff_text = '#133337',
    },
    custom_hlgroups = {
        TSInclude = {
            fg = palette.aqua,
        },
        GitSignsAdd = {
            fg = palette.green,
            bg = palette.base2
        },
        GitSignsDelete = {
            fg = palette.pink,
            bg = palette.base2
        },
        GitSignsChange = {
            fg = palette.orange,
            bg = palette.base2
        },
    }
}
```

With `italics` option (`true` by default), you can disable italic used by default in style for some groups (`Function`, `Keyword`, `Comment`...).

```
require('monokai').setup { italics = false }
```

## Extras

Extra color configs for **Kitty**, **Alacritty**, **Windows Terminal**, can be found in [extras](extras/). To use them, refer to their respective documentation.
