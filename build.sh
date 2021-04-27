#!/usr/bin/env bash
set -x

main(){
yarn || return 1
yarn build --scope cypress || return 1
yarn binary-build || return 1
yarn binary-zip || return 1
   cd cli || return 1
yarn || return 1
yarn build || return 1
cd build || return 1
yarn pack || return 1
}
main "$@"
