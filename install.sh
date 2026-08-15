#!/usr/bin/env bash

# Script to install this vim plugin
# Usage: ./install.sh

VIM_HOME=$HOME/.vim

# $VIM_HOME/ftdetect/mlir.vim
mkdir -p $VIM_HOME/ftdetect
cp -r ftdetect/mlir.vim $VIM_HOME/ftdetect/mlir.vim

# $VIM_HOME/ftplugin/mlir.vim
mkdir -p $VIM_HOME/ftplugin
cp -r ftplugin/mlir.vim $VIM_HOME/ftplugin/mlir.vim

# $VIM_HOME/indent/mlir.vim
mkdir -p $VIM_HOME/indent
cp -r indent/mlir.vim $VIM_HOME/indent/mlir.vim

# $VIM_HOME/syntax/mlir.vim
mkdir -p $VIM_HOME/syntax
cp -r syntax/mlir.vim $VIM_HOME/syntax/mlir.vim

