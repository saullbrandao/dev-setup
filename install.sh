#!/bin/bash

set -e

INSTALL_DIR="$BASE_DIR/install"

# Check if a specific script name is provided
if [ $# -eq 1 ]; then
  script_name="$1"
  script="$INSTALL_DIR/${script_name}.sh"
  if [ -f "$script" ]; then
    echo "Executing $script..."
    bash "$script"
  else
    echo "Error: No script found with name containing '$script_name' in $INSTALL_DIR"
    exit 1
  fi
else
  # Run all scripts in install directory
  for script in "$INSTALL_DIR"/*.sh; do
    if [ -f "$script" ]; then
      echo "Executing $script..."
      bash "$script"
    fi
  done
fi

