#!/usr/bin/env bash

# Script to uninstall this vim plugin.
# Usage: ./uninstall.sh

VIM_HOME="$HOME/.vim"

# $VIM_HOME/ftdetect/mlir.vim
if [ -f "$VIM_HOME/ftdetect/mlir.vim" ]; then
    rm -f "$VIM_HOME/ftdetect/mlir.vim"
fi
if [ -d "$VIM_HOME/ftdetect" ] && [ -z "$(ls -A "$VIM_HOME/ftdetect")" ]; then
    rm -rf "$VIM_HOME/ftdetect"
fi

# $VIM_HOME/ftplugin/mlir.vim
if [ -f "$VIM_HOME/ftplugin/mlir.vim" ]; then
    rm -f "$VIM_HOME/ftplugin/mlir.vim"
fi
if [ -d "$VIM_HOME/ftplugin" ] && [ -z "$(ls -A "$VIM_HOME/ftplugin")" ]; then
    rm -rf "$VIM_HOME/ftplugin"
fi

# $VIM_HOME/indent/mlir.vim
if [ -f "$VIM_HOME/indent/mlir.vim" ]; then
    rm -f "$VIM_HOME/indent/mlir.vim"
fi
if [ -d "$VIM_HOME/indent" ] && [ -z "$(ls -A "$VIM_HOME/indent")" ]; then
    rm -rf "$VIM_HOME/indent"
fi

# $VIM_HOME/syntax/mlir.vim
if [ -f "$VIM_HOME/syntax/mlir.vim" ]; then
    rm -f "$VIM_HOME/syntax/mlir.vim"
fi
if [ -d "$VIM_HOME/syntax" ] && [ -z "$(ls -A "$VIM_HOME/syntax")" ]; then
    rm -rf "$VIM_HOME/syntax"
fi
