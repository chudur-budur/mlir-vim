## MLIR plugin for vim-plug

This is stolen from mlir with two extra scripts to be used in vim-plug like this:

```vim
call plug#begin()

Plug 'chudur-budur/mlir-vim', { 'do' : './install.sh' }

call plug#end()
```

To uninstall, just run the uninstall.sh script:

```bash
./<your-vim-directory>/plugged/mlir-vim/uninstall.sh
```

then, inside vim

```vim
:PlugClean
```

---

#### README from the original source:

---

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
