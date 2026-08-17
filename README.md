## MLIR plugin for vim

There is already an MLIR plugin for vim in [`llvm-project/mlir/utils/vim`](https://github.com/llvm/llvm-project/tree/main/mlir/utils/vim) that
many people don't notice although they can be very handy. This repo is stolen
from there and adds more expanded mlir syntax.

### How to use (stand-alone):

Clone the repo:

```bash
https://github.com/chudur-budur/mlir-vim.git
cd mlir-vim
```

and add the repo to your vim runtimepath:

```vim
:set rtp+=/path/to/your/mlir-vim/repo
```

### How to use with vim-plug:

To use with [vim-plug](https://github.com/junegunn/vim-plug), follow their instructions.
i.e. just add this repo like this in your `.vimrc` file:

```vim
call plug#begin()

" ...
" ... your other vim-plug plugins
" ...

Plug 'chudur-budur/mlir-vim'

call plug#end()
```

---

#### README from the original source:

-*- mlir/utils/vim/README -*-

This directory contains settings for the vim editor to work on MLIR *.mlir
files.  It comes with filetype detection rules in the (ftdetect),
syntax highlighting (syntax), some minimal sensible default settings (ftplugin)
and indentation plugins (indent).

To install, copy all subdirectories to your $HOME/.vim/, or if you
prefer, create symlinks to the files here.

To enable highlighting inside the Markdown docs, one can add

```
let g:markdown_fenced_languages = ['mlir']
```

to `.vimrc`.

---
