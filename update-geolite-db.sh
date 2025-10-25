#!/bin/bash

# Exit immediately if any command fails
set -e

# Set variables
TEMP_DIR="/tmp/downloads_geoip2_$(date +%s)"
DESTINATION_DIR="./data/nginx/geoip2"

# Define URLs directly in the script
URLS=(
"https://git.io/GeoLite2-ASN.mmdb"
"https://git.io/GeoLite2-City.mmdb"
"https://git.io/GeoLite2-Country.mmdb"
)

# Create temporary directory
mkdir -p "$TEMP_DIR"
echo "Created temporary directory: $TEMP_DIR"

# Function to clean up
cleanup() {
  echo "Cleaning up temporary directory..."
  rm -rf "$TEMP_DIR"
  
  # If $1 is provided, it's an error and we should exit with error code
  if [ -n "$1" ]; then
    exit 1
  else
    exit 0
  fi
}

# Trap for handling unexpected script termination
trap 'cleanup "Interrupted"' INT TERM

echo "Starting downloads..."

# Download all URLs
for url in "${URLS[@]}"; do
  filename=$(basename "$url")
  echo "Downloading $url to $TEMP_DIR/$filename"
  
  # We don't use set -e for the wget command to handle failures ourselves
  wget -q --show-progress -O "$TEMP_DIR/$filename" "$url" || {
    echo "Error: Failed to download $url"
    cleanup "Download failed"
  }
done

echo "All downloads completed successfully."

# Check if destination directory exists, create if it doesn't
if [ ! -d "$DESTINATION_DIR" ]; then
  echo "Creating destination directory: $DESTINATION_DIR"
  mkdir -p "$DESTINATION_DIR"
fi

# Move files to destination
echo "Moving files to $DESTINATION_DIR"
mv "$TEMP_DIR"/* "$DESTINATION_DIR/"

# Clean up temporary directory
echo "Operation completed successfully. Files are now in $DESTINATION_DIR"
cleanup

