#!/usr/bin/env bash
set -euo pipefail

# Convenience script: create venv, install requirements, and run app
ROOT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$ROOT_DIR"

if [ ! -d venv ]; then
  echo "Creating virtual environment..."
  python3 -m venv venv
fi

echo "Installing dependencies into venv..."
venv/bin/python -m pip install --upgrade pip
venv/bin/python -m pip install -r requirements.txt

echo "Starting app..."
venv/bin/python app.py
