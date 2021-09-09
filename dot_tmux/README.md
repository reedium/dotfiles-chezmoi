# Tmux

## Table of Contents

<!-- vim-markdown-toc GFM -->

* [Shortcuts](#shortcuts)
* [Notes](#notes)
    * [Copying and save buffer](#copying-and-save-buffer)

<!-- vim-markdown-toc -->


## Shortcuts

**Leader Combo:** `ctrl + a`

| Shortcut       | Description                               |
| -------------- | ----------------------------------------- |
| `<leader>| `   | Split Vertically                          |
| `<leader>-`    | Split Horizontally                        |
| `<leader>m`    | Toggle mouse mode                         |
| `<leader>P`    | Save current window to file (32000 lines) |
| `<leader>H`    | Toggle logging of session                 |
| `<leader>r`    | Reload tmux configuration                 |
| `<leader>T`    | Make current window first window          |
| `<leader>PgUp` | Enter copy mode                           |

## Notes

### Copying and save buffer
This can be done through the shortcut `<leader>P` which will ask where to
save the entire buffer of the current window, up to 32000 lines.

Below is the manual method for saving a selection rather than the whole buffer

1. `<leader><pgup>`
2. Move to line you want to start copying from
3. `<space>`
4. Move to last line
5. ` <enter>`
6. `<leader> :save-buffer <filepath>`
