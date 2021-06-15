# Neovim Monokai

Monokai Theme for Neovim with tree-sitter support

<img width="1792" alt="monokai nvim" src="https://user-images.githubusercontent.com/25164326/121434903-0562f180-c94c-11eb-952d-df702d92fe25.png">

Monokai Pro colors are also included.

### Prerequisites:

Neovim Nightly (0.5) is required for monokai.nvim to work.

### Installation:

#### Via Plug:

```viml
Plug 'tanvirtin/monokai.nvim'
```

#### Via Packer:

```lua
use 'tanvirtin/monokai.nvim'
```

### Usage:

In VimL:

```viml
syntax on
colorscheme monokai
set termguicolors
``

In Lua:

```lua
require('monokai')
vim.cmd('colorscheme monokai')
```

If you want to use colors from Monokai Pro, simply specify the `monokai_pro` color scheme.

```viml
syntax on
colorscheme monokai_pro
set termguicolors
```

Or in Lua:

```lua
require('monokai')
vim.cmd('colorscheme monokai_pro')
```
