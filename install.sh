#!/bin/bash
PYTHON_VERSION=${PYTHON_VERSION:=3.10.4}

if ! [ -x "$(command -v ansible-playbook)" ]; then
  echo "Could not find command ansible-playbook, trying to source pyenv"
  if [ ! -d "$HOME/.pyenv" ]; then
    echo "$HOME/.pyenv folder does not exist"

    read -p "Do you want to install pyenv, python ($PYTHON_VERSION), ansible? y/n " -n 1 -r
    if [[ ! $REPLY =~ ^[Yy]$ ]]
    then
      exit 1
    fi

    sudo apt-get update

    sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
    libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
    xz-utils tk-dev libffi-dev liblzma-dev  git

    if [ ! -d "$HOME/.pyenv" ]; then
      echo "$HOME/.pyenv folder does not exist, installing..."
      curl https://pyenv.run | bash
    fi

    export PATH="$HOME/.pyenv/bin:$PATH"
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"

    pyenv install $PYTHON_VERSION --skip-existing
    pyenv global $PYTHON_VERSION

    pip install ansible
  else
    export PATH="$HOME/.pyenv/bin:$PATH"
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
  fi
fi

ansible-playbook -i "ansible/hosts" -l localhost ansible/playbook.yml --ask-become-pass
