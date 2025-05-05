# NeoVim Personal Configuration

Personal configuration for `NeoVim`, including lazy package installer, etc.

## Instalation

Clone repo and run `install_neovim`.

## Plugins used

- **kanagawa.nvim**: a `NeoVim` dark colorscheme inspired by "The Great Wave off Kanagawa" painting, by Katsushika Hokusai; see [repository](https://github.com/rebelot/kanagawa.nvim) by [Tommazo Laurenzi](https://github.com/rebelot)
- **nvim-treesitter**:
- **nvim-treesitter-textobjects**: used to create queries associated to keystrokes to quickly select specific blocks of code; for example, it can be used to select all lines inside a function.


## Default NeoVim Keymaps

`NeoVim`, like its predecessors `vim` and `vi`, is a modal editor of text, which means the editor works in different modes for different tasks. The starting mode is the `Normal` mode, which is intended to navigate through text without editing it.

### Normal Mode

#### Navigation

In `NeoVim` and other modal editors, numbers added before a motion repeat that motion the number of times specified. For example, `4ft` moves the cursor to the 4th instance of `t` in the line.

| Keymap | Mode | Function/Effect | Definition |
| :---: | :---: | :--- | :---: |
| , | Normal/Visual | Move cursor to previous instance of character in `find` | - |
| ; | Normal/Visual | Move cursor to next instance of character in `find` | - |
| ^ | Normal/Visual | Move cursor/selection to the line's first character | - |
| $ | Normal/Visual | Move cursor/selection to the end of the line | - |
| = | Normal/Visual | Fixes indention of the line under the cursor or line selection| - |
| 0 | Normal/Visual | Move cursor/selection to the beginning of the line | - |
| b | Normal/Visual | Move cursor/selection to the end of the next word | - |
| f | Normal/Visual | Moves the cursor to the next instance of the character pressed after `f` and see `;` and `,` for more find motions | - |
| G | Normal/Visual | Moves cursor to the last line of the file | - |
| gg | Normal/Visual | Moves cursor to the first line of file | - |
| h | Normal/Visual | Move cursor/selection left | - |
| j | Normal/Visual | Move cursor/selection down | - |
| k | Normal/Visual | Move cursor/selection up | - |
| l | Normal/Visual | Move cursor/selection down | - |
| M | Normal/Visual | Moves cursor to the center of the currently displayed text | - |
| w | Normal/Visual | Move cursor/selection to the next word | - |
| W | Normal/Visual | Move cursor/selection to the next WORD | - |
| zz | Normal/Visual | Scrolls window to make current line the center of the screen | - |

**Suggestion**: remap `E` and `B` to move cursor to the beginning of the line's first character and end of the line, respectivelly.

#### Switch Mode

| Keymap | Mode | Function/Effect | Definition |
| :---: | :---: | :--- | :---: |
| a | Normal | Enter `Insert` mode after the cursor | - |
| A | Normal | Enter `Insert` mode at the end of the current line | - |
| i | Normal | Enter `Insert` mode before the cursor | - |
| I | Normal | Enter `Insert` mode at the beginning of the current line | - |

**Suggestion**: remap `jj` or `jk` to enter Normal mode from Insert mode.

#### Other motions

| Keymap | Mode | Function/Effect | Definition |
| :---: | :---: | :--- | :---: |
| / | Normal | Opens search window (enhanced with `fzf`) | - |
| dd | Normal | Deletes line under the cursor | - |
| dw | Normal | Deletes from cursor until the end of the word | - |
| dW | Normal |  Deletes from cursor until the end of the WORD | - |
| gcc | Normal | Comments line under the cursor | - |
| u | Normal | Undo previous action | - |

## Custom Keymaps

List of custom keymaps

### Leader Key

| Keymap | Mode | Function/Effect | Definition |
| :----: | :--: | :-------------- | :--------: |
| \<space\>  |  -   | Leader key      | `lazy.lua` |

### Custom Keymaps

These keymaps can be defined in `lua/config/keymaps.lua`, ... (see table).

|        Keymap        |  Mode  | Function/Effect                                                                                   |   Definition    |
| :------------------: | :----: | :------------------------------------------------------------------------------------------------ | :-------------: |
| \<leader\>\<leader\> | Normal | Opens a `fzf` floating window with all the open buffers                                           |  `fzflua.lua`   |
|     \<leader\>/      | Normal | Opens a `fzf` floating window with a live grep of the current buffer                              |  `fzflua.lua`   |
|     \<leader\>D      | Normal | Jumps to the type of the expression under the cursor                                              | `lspconfig.lua` |
|     \<leader\>ds     | Normal | Opens `fzf` floating window to search buffer symbols (variables, functions, types, etc)           | `lspconfig.lua` |
|     \<leader\>fb     | Normal | Opens a `fzf` floating window with all the builtin `fzflua` functions                             |  `fzflua.lua`   |
|     \<leader\>fc     | Normal | Opens a `fzf` floating window to find files in NeoVim configuration                               |  `fzflua.lua`   |
|     \<leader\>fd     | Normal | Opens a `fzf` floating window with a searchable list of the LSP diagnostics of the current buffer |  `fzflua.lua`   |
|     \<leader\>ff     | Normal | Opens a `fzf` floating window to find files in the current project directory                      |  `fzflua.lua`   |
|     \<leader\>fg     | Normal | Opens a `fzf` floating window to grep files in the current project directory                      |  `fzflua.lua`   |
|     \<leader\>fh     | Normal | Opens a `fzf` floating window to find help content for expression under the cursor                |  `fzflua.lua`   |
|     \<leader\>fk     | Normal | Opens a `fzf` floating window to search keymapings                                                |  `fzflua.lua`   |
|     \<leader\>fo     | Normal | Opens a `fzf` floating window with previously opened files                                        |  `fzflua.lua`   |
|     \<leader\>fr     | Normal | Opens a `fzf` floating window with the previous `fzf` search                                      |  `fzflua.lua`   |
|     \<leader\>fw     | Normal | Opens a `fzf` floating window with instances of word in the current project directory             |  `fzflua.lua`   |
|     \<leader\>fW     | Normal | Opens a `fzf` floating window with instances of WORD in the current project directory             |  `fzflua.lua`   |
|     \<leader\>rn     | Normal | Renames every instance of variable under the cursor                                               | `lspconfig.lua` |
|     \<leader\>ws     | Normal | Opens `fzf` floating window to search project symbols (variables, functions, types, etc)          | `lspconfig.lua` |
|          -           | Normal | Opens a floating window with the `Oil` file explorer                                              |  `keymaps.lua`  |
|          gd          | Normal | Jumps to definition of expression under the cursor                                                | `lspconfig.lua` |
|          gl          | Normal | Opens a floating window with the LSP diagnostics of the line corresponding to the cursor location |  `keymaps.lua`  |
|          gI          | Normal | Jumps to the implementation of the expression under the cursor                                    | `lspconfig.lua` |
|          gr          | Normal | Jumps to references of expression under the cursor                                                | `lspconfig.lua` |

a
