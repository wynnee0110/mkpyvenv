#!/usr/bin/env bash
set -euo pipefail

REPO_URL="https://github.com/wynnee0110/mkpyvenv/install.sh"
INSTALL_DIR="${INSTALL_DIR:-$HOME/.local/bin}"
COMMAND_NAME="${COMMAND_NAME:-mkpy}"

mkdir -p "$INSTALL_DIR"

if [ -f "./mkpy.sh" ]; then
  cp "./mkpy.sh" "$INSTALL_DIR/$COMMAND_NAME"
else
  if command -v curl >/dev/null 2>&1; then
    curl -fsSL "$REPO_URL" -o "$INSTALL_DIR/$COMMAND_NAME"
  elif command -v wget >/dev/null 2>&1; then
    wget -qO "$INSTALL_DIR/$COMMAND_NAME" "$REPO_URL"
  else
    echo "Install failed: curl or wget is required."
    exit 1
  fi
fi

chmod +x "$INSTALL_DIR/$COMMAND_NAME"

case ":$PATH:" in
  *":$INSTALL_DIR:"*) ;;
  *)
    echo "Installed $COMMAND_NAME to $INSTALL_DIR."
    echo "Add this to your shell profile if the command is not found:"
    echo "  export PATH=\"$INSTALL_DIR:\$PATH\""
    exit 0
    ;;
esac

echo "Installed $COMMAND_NAME to $INSTALL_DIR."
echo "Run: $COMMAND_NAME my_project"
