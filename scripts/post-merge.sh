#!/usr/bin/env bash
set -euo pipefail

if [[ -f "index.html" ]]; then
  test -s "index.html"
fi

if [[ -f "server.py" ]]; then
  python3 -m py_compile server.py
fi