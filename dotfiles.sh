#!/usr/bin/env bash

# Define the target directory
TARGET_DIR="$HOME"

# Define an array of dotfiles directories to be managed
DOTFILES=("shell" "tmux" "nvim" "vim" "git" "alacritty")

# Function to print usage information
usage() {
  echo "Usage: $0 [stow|unstow|restow]"
  echo
  echo "Options:"
  echo "  stow      Symlink the dotfiles to the home directory"
  echo "  unstow    Remove the symlinks from the home directory"
  echo "  restow    Re-symlink the dotfiles to the home directory (unstow followed by stow)"
  echo
  echo "Example:"
  echo "  $0 stow       # Symlink the dotfiles"
  echo "  $0 unstow     # Remove the symlinks"
  echo "  $0 restow     # Re-symlink the dotfiles"
  exit 1
}

# Check if stow is installed, and install it if not
if ! command -v stow &> /dev/null; then
  echo "stow is not installed. Installing stow..."

  # Detect the operating system and install stow accordingly
  if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    if command -v apt-get &> /dev/null; then
      sudo apt-get update
      sudo apt-get install -y stow
    else
      echo "Unsupported Linux distribution. Please install stow manually."
      exit 1
    fi
  elif [[ "$OSTYPE" == "darwin"* ]]; then
    if command -v brew &> /dev/null; then
      brew install stow
    else
      echo "Homebrew is not installed. Please install Homebrew and try again."
      exit 1
    fi
  else
    echo "Unsupported operating system. Please install stow manually."
    exit 1
  fi
fi

# Check for correct number of arguments
if [ "$#" -ne 1 ]; then
  usage
fi

# Determine the operation based on the first argument
OPERATION=$1
case $OPERATION in
  stow)
    STOW_OPTION="-S"
    ;;
  unstow)
    STOW_OPTION="-D"
    ;;
  restow)
    STOW_OPTION="-R"
    ;;
  *)
    usage
    ;;
esac

# Iterate over the array and stow/unstow/restow each directory
for dir in "${DOTFILES[@]}"; do
  stow $STOW_OPTION -t "$TARGET_DIR" "$dir"
done

echo "Dotfiles $OPERATION completed."

