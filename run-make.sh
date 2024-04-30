#!/usr/bin/env bash
set -euxo pipefail

make
mingw32-make
/c/mingw64/bin/make