#!/bin/bash
set +euo pipefail

pushd $HOME

test -e .env && {
  echo -n "Found existing install, continue? [y/N] "
  read continue && [[ "$continue" != "y" ]] && {
    exit 1
  }
}

rm -rf .env .zgen .zsh* .zcustom .oh-my-zsh
git clone https://github.com/jhead/env.git .env
. .env/install.sh

popd
