#!/usr/bin/env bash
set -euo pipefail

echo 'some dummy shell script'
if [ -f ./test-shell.sh ]; then echo 'exists'; else echo 'not exists'; fi