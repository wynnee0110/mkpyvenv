#!/bin/bash
if [ -z "$1" ]; then
  echo "Usage: mkpy <project_name>"
  exit 1
fi

PROJECT=$1

mkdir -p "$PROJECT" && cd "$PROJECT" || exit

echo "Creating project: $PROJECT"

if command -v python3 &> /dev/null; then
  PYTHON=python3
elif command -v python &> /dev/null; then
  PYTHON=python
else
  echo "Python not found"
  exit 1
fi

echo "Setting up virtual environment..."
$PYTHON -m venv venv

source venv/bin/activate

touch main.py requirements.txt README.md

echo "venv/" > .gitignore
echo "__pycache__/" >> .gitignore

echo "print('Hello, world!')" > main.py

if command -v git &> /dev/null; then
  git init > /dev/null
fi

echo "Done!"