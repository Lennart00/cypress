#!/usr/bin/env bash
set -ex
yarn
yarn build --scope cypress
yarn binary-build
yarn binary-zip
