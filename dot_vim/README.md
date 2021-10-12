# VIM

Note: Some features require version 8+ of vim. For instance, the ALE plugin which utilizes the built-in `~/.vim/pack/` for autoloading plugins

## Table of Contents
<!-- vim-markdown-toc GFM -->

* [Snippets](#snippets)
    * [Incrementing a column of numbers](#incrementing-a-column-of-numbers)
* [Plugins](#plugins)
* [Keybindings](#keybindings)
    * [Display Related](#display-related)
    * [Formatting Related](#formatting-related)
    * [Navigation Related](#navigation-related)
    * [Tabs and Windows Related](#tabs-and-windows-related)
    * [Misc Related](#misc-related)

<!-- vim-markdown-toc -->

## Snippets
```
<v><e><y>       # select to end of word/variable and yank
<c><t><)>       # cut everything before )  [eg func(text-to-cut)]
```

### Incrementing a column of numbers
```
<ctrl><v>       # Select all number columns to increment
<g><ctrl+a>     # If using tmux config, may need to hit a twice (e.g. <ctrl+a+a>
```

## Plugins
* ~~[Easymotion](https://github.com/easymotion/vim-easymotion) - Easily navigate documents~~ Disabled recently as unused, although useful
* [Asynchronous Lint Engine (ALE)](https://github.com/dense-analysis/ale) - Linting while working
* [Gruvbox](https://github.com/morhetz/gruvbox) - Retro colorscheme (colorscheme in vimrc)
* ~~[Matchit](https://github.com/adelarsq/vim-matchit) - For expanding % matching (matches start/end tags for html, for example)~~ Disabled recently as possibly unused
* [Lightline](https://github.com/itchyny/lightline.vim) - Configurable statusline/tabline
* [Markdown TOC](https://github.com/mzlogin/vim-markdown-toc) - A markdown Table of Contents generator
* [NERDCommenter](https://github.com/preservim/nerdcommenter) - Quick commenting/uncommenting of lines
* [NERDTree](https://github.com/scrooloose/nerdtree) - Local file explorer
* [python-syntax](https://github.com/vim-python/python-syntax) - Better syntax highlighting for python
* [Tabular](https://github.com/godlygeek/tabular/) - Easily align text based on delimeters (e.g. |)
* [surround.vim](https://github.com/tpope/vim-surround) - Easily surround with delimeters (e.g. "Something")
* [IndentLines](https://github.com/Yggdroot/indentLine) - View the indentations (`<leader>i`)
* ~~[vim-rainbow](https://github.com/frazrepo/vim-rainbow.git) - Different colors for different levels of brackets~~ Disabled as interfers with spellcheck for some reason



## Keybindings

**Leader Key:** `,` (comma)

### Display Related

| Shortcut                     | Description                                                                                                          | Plugin         |
| ---------------------------- | -------------------------------------------------------------------------------------------------------------------- | -------------- |
| `<leader><F3>`               | Toggle wordwrap                                                                                                      |                |
| `<leader>bg`                 | Toggle dark/light background                                                                                         |                |
| `<leader>h`                  | Disable search highlight                                                                                             |                |
| `<leader>f<0-9>`             | Set foldlevel (0-9)                                                                                                  |                |
| `<leader>i`                  | Toggle indent guides                                                                                                 | IndentLines    |

### Formatting Related

| Shortcut                     | Description                                                                                                          | Plugin         |
| ---------------------------- | -------------------------------------------------------------------------------------------------------------------- | -------------- |
| `-`                          | Comment out selected lines (filetype needs to be configured in vimrc for support)                                    | NERDcommenter  |
| `_`                          | Uncomment selected lines (filetype needs to be configured in vimrc for support)                                      | NERDcommenter  |
| `<leader><F2>`               | Remove trailing whitespace from file                                                                                 |                |
| `<leader>a<delimiter>`       | Accept various common delimiters for tabulizing blocks of code (e.g. `varname = something`, = being the delimiter)   | Tabular        |
| `<leader>d`                  | Add delimiters around entire line (normal mode) or selection (visual mode)                                           | vim-surround   |
| `<leader>j`                  | Pretty print json (current open file)                                                                                |                |
| `<leader>D`                  | Add delimiters around current word (normal mode)                                                                     | vim-surround   |
| `<leader>q`                  | Format a paragraph/line to better fit the textwidth                                                                  |                |
| `<leader>p`                  | Toggle paste mode                                                                                                    |                |
| `S)`                         | Add delimiters current selection                                                                                     | vim-surround   |
| `cs<delimiter><delimiter>`   | Replace a character with anothere charcter (e.g. `cs"'`, or `cs'<p class="test">`)                                   | vim-surround   |
| `ds<delimiter>`              | Remove a delimiter                                                                                                   | vim-surround   |
| `ysiw]`                      | Add delimiters around current word                                                                                   | vim-surround   |
| `yss)`                       | Add delimiters around entire line                                                                                    | vim-surround   |

### Navigation Related

| Shortcut                     | Description                                                                                                          | Plugin         |
| ---------------------------- | -------------------------------------------------------------------------------------------------------------------- | -------------- |
| `%`                          | Find the end {}, [], or start/end tags (e.g. html)                                                                   | Base, Matchit  |
| `*`                          | Highlight all occurences of word under cursor (default in vim)                                                       |                |
| `ff`                         | Display all occurences of word under cursor                                                                          |                |
| `cwd`                        | Change working dirctory to current file's                                                                            |                |
| `<leader>n`                  | Toggle NERDTree                                                                                                      | NERDTree       |
| `<leader>j`                  | Move to next linting error                                                                                           | ALE            |
| `<leader>k`                  | Move to previous linting error                                                                                       | ALE            |

### Tabs and Windows Related

| Shortcut                     | Description                                                                                                          | Plugin         |
| ---------------------------- | -------------------------------------------------------------------------------------------------------------------- | -------------- |
| `<leader>sh`                 | Split horizontally                                                                                                   |                |
| `<leader>sv`                 | Split vertically                                                                                                     |                |
| `<leader>t`                  | Tab Next                                                                                                             |                |
| `<leader>T`                  | Tab Previous                                                                                                         |                |
| `<leader>w`                  | cycle through split windows                                                                                          |                |
| `<leader><+>`                | Resize horizontal pane (3/2)                                                                                         |                |
| `<leader><->`                | Resize horizontal pane (2/3)                                                                                         |                |
| `<leader><<>`                | Resize vertical pane (3/2)                                                                                           |                |
| `<leader><>>`                | Resize vertical pane (2/3)                                                                                           |                |

### Misc Related

| Shortcut                     | Description                                                                                                          | Plugin         |
| ---------------------------- | -------------------------------------------------------------------------------------------------------------------- | -------------- |
| `<leader><F4>`               | Reload vimrc file                                                                                                    |                |
| `w!!`                        | Attempt to sudo and write to file                                                                                    |                |

