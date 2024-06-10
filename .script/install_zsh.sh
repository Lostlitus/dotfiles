#!/usr/bin/env bash

git clone https://github.com/larkery/zsh-histdb.git $HOME/Developer/local/src/zsh-histdb

brew install fzf; fzf --zsh > $HOME/.fzf.zsh

git clone https://github.com/Aloxaf/fzf-tab $HOME/Developer/local/src/fzf-tab

brew install zsh-autosuggestions

brew install zsh-syntax-highlighting
