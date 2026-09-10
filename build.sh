#!/usr/bin/env bash
set -euo pipefail

cd -- "$(dirname -- "${BASH_SOURCE[0]}")"

if ! command -v nix-build >/dev/null 2>&1; then
    echo 'Nix is required. See README.md for setup instructions.' >&2
    exit 1
fi

mkdir -p build
nix-build ./config --out-link build/result --max-jobs 2 "$@"
# Replace the previous output only after a successful build.
output=$(mktemp ./build/glove80.uf2.XXXXXX)
trap 'rm -f -- "$output"' EXIT
cp build/result/glove80.uf2 "$output"
chmod 644 "$output"
mv -f -- "$output" build/glove80.uf2
printf 'Firmware ready: %s/build/glove80.uf2\n' "$PWD"
