# NVIM
## Configuration for Neovim
### Installing
Run the following command in a terminal(*nix)

```shell
git clone https://github.com/Emin017/nvim.git ~/.config/nvim
```
Then open `nvim` and enjoy it!

---

### Keybindings

The default leader key is `\`, I changed it to `<Space>`.

- mode:
    - `N` -> Normal mode
    - `I` -> Insert mode
    - `V` -> Visual mode
- `<C-c>` means pressing `<Ctrl>` and `c` simultaneously.
- `<A-d>` means pressing `<Alt>` and `d` simultaneously.
- `<Leader>ps` means pressing `<Leader>` then `p` then `s`.

|               Effect                  |  Mode  |  Shorcut    |
| :-----------------------------------: | :----: | :---------: |
| show dashboard                        |   `N`  | `<Leader>a` |
| show explorer                         |   `N`  | `<Leader>e` |
| kill buffer                           |   `N`  | `<Leader>k` |
| open plugin manager                   |   `N`  | `<Leader>p` |
| open mason                            |   `N`  | `<Leader>m` |
| reformat code                         |   `N`  | `<Leader>r` |
| quit                                  |   `N`  | `<Leader>q` |
|              **Search**               |        |             |
| search for commands                   |   `N`  | `<Leader>sc`|
| search keymaps                        |   `N`  | `<Leader>sk`|
| search manpages                       |   `N`  | `<Leader>sm`|
| search registers                      |   `N`  | `<Leader>sr`|
| fine help                             |   `N`  | `<Leader>sh`|
|            **File Search**            |        |             |
| search colorscheme                    |   `N`  | `<Leader>fc`|
| find files                            |   `N`  | `<Leader>ff`|
| recent files                          |   `N`  | `<Leader>fk`|
| find text pattern                     |   `N`  | `<Leader>ft`|
|               **LSP**                 |        |             |
| go to definition                      |   `N`  | `<Leader>gd`|
| go to declaration                     |   `N`  | `<Leader>gD`|
| show references                       |   `N`  | `<Leader>gr`|
| show type definition                  |   `N`  | `<Leader>go`|
| show diagnostics in a floating window |   `N`  | `<Leader>gf`|
| show documents symbols                |   `N`  | `<Leader>ls`|
| show workspace symbols                |   `N`  | `<Leader>lS`|
| show lsp info                         |   `N`  | `<Leader>lI`|

Search for more keybindings: `<Leader>sk`

---
### Plugins
- [`goolord/alpha-nvim`](https://github.com/goolord/alpha-nvim)
- [`dstein64/vim-startuptime`](https://github.com/dstein64/vim-startuptime)
- [`folke/neodev.nvim`](https://github.com/folke/neodev.nvim)
- [`phaazon/hop.nvim`](https://github.com/phaazon/hop.nvim)
- [`folke/which-key.nvim`](https://github.com/folke/which-key.nvim)
- [`folke/neoconf.nvim`](https://github.com/folke/neoconf.nvim)
- [`nvim-tree/nvim-tree`](https://github.com/nvim-tree/nvim-tree.lua)
- [`nvim-treesitter/nvim-treesitter`](https://github.com/nvim-treesitter/nvim-treesitter)
- [`neovim/nvim-lspconfig`](https://github.com/neovim/nvim-lspconfig)             -- Required
- [`williamboman/mason.nvim`](https://github.com/williamboman/mason.nvim)           -- Optional
- [`williamboman/mason-lspconfig.nvim`](https://github.com/williamboman/mason-lspconfig.nvim) -- Optional

    Autocompletion
- [`windwp/nvim-autopairs`](https://github.com/windwp/nvim-autopairs)
- [`nvim-lua/completion-nvim`](https://github.com/nvim-lua/completion-nvim)
- [`steelsojka/completion-buffers`](https://github.com/steelsojka/completion-buffers)
- [`hrsh7th/nvim-cmp`](https://github.com/hrsh7th/nvim-cmp)         -- Required
- [`hrsh7th/cmp-nvim-lsp`](https://github.com/hrsh7th/cmp-nvim-lsp) -- Required
- [`hrsh7th/cmp-buffer`](https://github.com/hrsh7th/cmp-buffer) -- Optional
- [`hrsh7th/cmp-path`](https://github.com/hrsh7th/cmp-path) -- Optional
- [`saadparwaiz1/cmp_luasnip`](https://github.com/saadparwaiz1/cmp_luasnip) -- Optional
- [`hrsh7th/cmp-nvim-lua`](https://github.com/hrsh7th/cmp-nvim-lua) -- Optional

    Snippets
- [`L3MON4D3/LuaSnip`](https://github.com/L3MON4D3/LuaSnip) -- Required
- [`rafamadriz/friendly-snippets`](https://github.com/rafamadriz/friendly-snippets) -- Optional
---

### Acknowledged

- [The NEOVIM IDE Series](https://medium.com/@shaikzahid0713/the-neovim-series-32163eb1f5d0)

- [nvimdots](https://github.com/ayamir/nvimdots)
