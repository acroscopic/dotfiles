#!/usr/bin/env bash
# install.sh — Symlink dotfiles into your HOME directory
# -----------------------------------------------------
# This script creates (or updates) symbolic links for your dotfiles
# (.bashrc, .bash_profile, .bash_aliases, .nanorc) from the repository
# root into your home directory.
#
# It will:
# 1. Determine the absolute path to the dotfiles directory.
# 2. Loop over each file in the FILES array.
# 3. Back up any existing non-symlinked files in $HOME.
# 4. Create or overwrite the symlink pointing from $HOME to the repo.
# 5. Print progress for each step.

set -euo pipefail
# -e: exit immediately if a command exits with a non-zero status
# -u: treat unset variables as an error and exit immediately
# -o pipefail: return exit status of the last command in the pipeline that failed

# Resolve the directory containing this script, even if called via symlink
DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# List of dotfiles to install (add more filenames here if needed)
FILES=(.bashrc .bash_profile .bash_aliases .nanorc)

echo "Installing dotfiles from $DOTFILES_DIR into $HOME..."
echo

for file in "${FILES[@]}"; do
  src="$DOTFILES_DIR/$file"      # Source file in the repo
  dest="$HOME/$file"             # Destination path in the home directory

  # If destination exists and is not already a symlink pointing to our source,
  # back it up by renaming with a .backup suffix.
  if [ -e "$dest" ] && [ ! -L "$dest" ]; then
    echo "  Backing up existing file: $dest → ${dest}.backup"
    mv "$dest" "${dest}.backup"
  fi

  # Create parent directory if needed (not strictly necessary here,
  # but useful if you later include files in subdirectories)
  mkdir -p "$(dirname "$dest")"

  # Create or update the symlink:
  # -f: remove existing destination file if it exists
  # -s: create a symbolic link
  ln -sf "$src" "$dest"
  echo "  Linked: $dest → $src"
done

echo
echo "All done! Your dotfiles are now linked. 🎉"
