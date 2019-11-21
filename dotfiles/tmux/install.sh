#!/bin/bash

echo "Installing tmux..."

sudo apt-get install tmux

echo "Installing tmux configs"

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

if [ -f ~/.tmux.conf ];
then
  echo "~/.tmux.conf already exists, skipped linking...";
else
  echo "Linking ~/.tmux.conf"
  ln -s ${DIR}/tmux.conf ~/.tmux.conf
fi
