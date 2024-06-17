#!/bin/bash

# Nerd Fonts GitHub release base URL
nerd_fonts_base_url="https://github.com/ryanoasis/nerd-fonts/releases/latest/download"

# Get the directory where the script is located
nerd_fonts_dir=$( cd "$( dirname "$0" )" && pwd )

# Set font directory based on the operating system
if [[ $(uname) == 'Darwin' ]]; then
  font_install_dir="$HOME/Library/Fonts"
else
  font_install_dir="$HOME/.local/share/fonts"
  mkdir -p "$font_install_dir"
fi

download_and_install_font() {
  font_name=$1
  font_download_dir="${nerd_fonts_dir}/${font_name}"
  mkdir -p "$font_download_dir"

  font_url="${nerd_fonts_base_url}/${font_name}.tar.xz"
  temp_tar_xz="${font_download_dir}/${font_name}.tar.xz"

  echo "Downloading $font_name..."
  curl -L -o "$temp_tar_xz" "$font_url"

  echo "Extracting $font_name..."
  tar -xf "$temp_tar_xz" -C "$font_download_dir"

  rm "$temp_tar_xz"
  echo "$font_name downloaded and extracted to $font_download_dir"

  echo "Copying fonts..."
  find "$font_download_dir" -type f \( -name '*.[o,t]tf' -or -name '*.pcf.gz' \) -print0 | xargs -0 -I % cp "%" "$font_install_dir/"

  # Reset font cache on Linux
  if command -v fc-cache > /dev/null ; then
    echo "Resetting font cache, this may take a moment..."
    fc-cache -f "$font_install_dir"
  fi

  echo "$font_name font installed to $font_install_dir"
  rm -rf $font_download_dir
}

if [[ $# -gt 0 ]]; then
  for font_name in "$@"; do
    download_and_install_font "$font_name"
  done
else
  echo "Nerd Fonts Installation Script"
  echo "Usage: $0 <font_name1> <font_name2> ..."
  echo "Example:"
  echo "    $0 UbuntuMono DejaVuSansMono    # Install UbuntuMono and DejaVuSansMono fonts"
fi

