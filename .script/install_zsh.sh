#!/usr/bin/env bash

git clone https://github.com/larkery/zsh-histdb.git $HOME/Developer/local/src/zsh-histdb
git clone https://github.com/Aloxaf/fzf-tab $HOME/Developer/local/src/fzf-tab

if [ "$(uname)" == "Darwin" ]
then
    brew install fzf; fzf --zsh > $HOME/.fzf.zsh
    brew install zsh-autosuggestions
    brew install zsh-syntax-highlighting
else
    echo "Warning: Current OS is not macOS, install fzf manually is needed"
    echo "Warning: Current OS is not macOS, install zsh-autosuggestions manually is needed"
    echo "Warning: Current OS is not macOS, install zsh-syntax-highlighting manually is needed"
fi



