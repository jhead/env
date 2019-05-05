#!/bin/bash
set +euo pipefail

pushd $HOME

rm -rf .n n bin/n
git clone https://github.com/tj/n.git .n

pushd .n
PREFIX=$HOME make install
popd

N_PREFIX=$HOME ./bin/n lts
./bin/node -v

popd
