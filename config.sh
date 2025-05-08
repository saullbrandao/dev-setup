#!/bin/bash

set -e

CONFIGS_DIR="$HOME/.local/share/dev-setup/configs"
HOME_CONFIG_DIR="$HOME/.config"

echo "Copying configs..."

# Copy individual files to home directory
for file in "$CONFIGS_DIR"/*; do
  if [ -f "$file" ]; then
    cp "$file" "$HOME/.$(basename "$file")"
  fi
done

# Copy config directories to ~/.config
for dir in "$CONFIGS_DIR"/*/ ; do
  if [ -d "$dir" ]; then
    dir_name=$(basename "$dir")
    mkdir -p "$HOME_CONFIG_DIR/$dir_name"
    cp -r "$dir"* "$HOME_CONFIG_DIR/$dir_name/"
  fi
done
