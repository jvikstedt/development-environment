#!/bin/bash

echo "Installing xterm configs"

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

if [ -d ~/.Xdefaults/ ];
then
  echo "Found existing Xdefaults config, skipping linking";
else
  echo "Linking Xdefaults"
  ln -s ${DIR}/Xdefaults ~/.Xdefaults
fi


if [ -d ~/.inputrc/ ];
then
  echo "Found existing inputrc config, skipping linking";
else
  echo "Linking .inputrc"
  ln -s ${DIR}/inputrc ~/.inputrc
fi
