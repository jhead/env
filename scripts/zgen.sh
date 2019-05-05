#!/bin/bash
set +euo pipefail

pushd $HOME

git clone https://github.com/tarjoilija/zgen.git .zgen
ln -s $HOME/.env/.zshrc .zshrc

popd
