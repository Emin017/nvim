# NVIM
## Configuration for Neovim
### Installing
Run the following command in a terminal(*nix)

```shell
git clone https://github.com/Emin-stack/nvim.git ~/.config/nvim
```
Then open `nvim` and enjoy it!

---

### Keybindings

The default leader key is `\`.

- mode:
    - `N` -> Normal mode
    - `I` -> Insert mode
    - `V` -> Visual mode
- `<C-c>` means pressing `<Ctrl>` and `c` simultaneously.
- `<A-d>` means pressing `<Alt>` and `d` simultaneously.
- `<leader>ps` means pressing `<leader>` then `p` then `s`.

|               Effect                  |  Mode  |  Shorcut    |
| :-----------------------------------: | :----: | :---------: |
| show dashboard                        |   `N`  | `<leader>a` |  
| show explorer                         |   `N`  | `<leader>e` |  
| kill buffer                           |   `N`  | `<leader>k` |  
| open plugin manager                   |   `N`  | `<leader>p` |  
| open mason                            |   `N`  | `<leader>m` |  
| reformat code                         |   `N`  | `<leader>r` |  
| save files                            |   `N`  | `<leader>w` |  
| quit                                  |   `N`  | `<leader>q` |  
|              **Search**               |        |             |
| search for commands                   |   `N`  | `<leader>sc`|  
| search keymaps                        |   `N`  | `<leader>sk`|  
| search manpages                       |   `N`  | `<leader>sm`|  
| search registers                      |   `N`  | `<leader>sm`|  
| fine help                             |   `N`  | `<leader>sh`|  
|            **File Search**            |        |             |
| find files                            |   `N`  | `<leader>ff`|  
| recent files                          |   `N`  | `<leader>sk`|  
| find text pattern                     |   `N`  | `<leader>sm`|  
|               **LSP**                 |        |             |
| go to definition                      |   `N`  | `<leader>gd`|  
| go to declaration                     |   `N`  | `<leader>gD`|  
| show references                       |   `N`  | `<leader>gr`|  
| show type definition                  |   `N`  | `<leader>go`|  
| show documents symbols                |   `N`  | `<leader>ls`|  
| show workspace symbols                |   `N`  | `<leader>lS`|  
| show diagnostics in a floating window |   `N`  | `<leader>gf`|  

Search for more keybindings: `<leader>sk`

---
### Plugins used
Plugins:
- `goolord/alpha-nvim`
- `dstein64/vim-startuptime`
- `folke/neodev.nvim`
- `phaazon/hop.nvim`
- `folke/which-key.nvim`
- `folke/neoconf.nvim`
- `nvim-tree/nvim-tree`
- `nvim-treesitter/nvim-treesitter`
- `neovim/nvim-lspconfig`             -- Required
- `williamboman/mason.nvim`'           -- Optional
- `williamboman/mason-lspconfig.nvim`' -- Optional

    Autocompletion
- `windwp/nvim-autopairs`
- `nvim-lua/completion-nvim`
- `steelsojka/completion-buffers`
- `hrsh7th/nvim-cmp`        -- Required
- `hrsh7th/cmp-nvim-lsp`     -- Required
- `hrsh7th/cmp-buffer`       -- Optional
- `hrsh7th/cmp-path`         -- Optional
- `saadparwaiz1/cmp_luasnip` -- Optional
- `hrsh7th/cmp-nvim-lua`     -- Optional

    Snippets
- `L3MON4D3/LuaSnip`             -- Required
- `rafamadriz/friendly-snippets` -- Optional
---

### Inspired by

- [The NEOVIM IDE Series](https://medium.com/@shaikzahid0713/the-neovim-series-32163eb1f5d0)

- [nvimdots](https://github.com/ayamir/nvimdots)
