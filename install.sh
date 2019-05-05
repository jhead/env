#!/bin/bash
set +euo pipefail

pushd $HOME/.env

echo "Installing zgen"
./scripts/zgen.sh

echo "Transferring bash_history"
./scripts/history.rb

echo "Installing NodeJS"
./scripts/n.sh

popd

exec zsh
