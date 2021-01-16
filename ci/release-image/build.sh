#!/usr/bin/env bash
set -euo pipefail

main() {
  cd "$(dirname "$0")/../.."
  source ./ci/lib.sh

  docker build -t "myvisual-studio/code-server-$ARCH:$VERSION" -f ./ci/release-image/Dockerfile .
}

main "$@"
