#!/bin/bash

ALPINE_URL="https://cdn.jsdelivr.net/npm/alpinejs@3.x.x/dist/cdn.min.js"
EMOJI_INDEX_URL="https://cdn.jsdelivr.net/npm/emoji-picker-element@^1/index.js"
EMOJI_PICKER_URL="https://cdn.jsdelivr.net/npm/emoji-picker-element@^1/picker.js"
EMOJI_DB_URL="https://cdn.jsdelivr.net/npm/emoji-picker-element@^1/database.js"
SUBFOLDER_NAME="resources/js"


download_file() {
    local url=$1
    local filename=$2

    mkdir -p "${SUBFOLDER_NAME}"
    curl -L -o "${SUBFOLDER_NAME}/${filename}.js" "$url" || { echo "Error downloading $filename!"; exit 1; }
}


echo "Downloading alpine.js..."
download_file "$ALPINE_URL" "alpine"

echo "Downloading emoji-picker-element..."
download_file "$EMOJI_INDEX_URL" "emoji-picker-element"
download_file "$EMOJI_PICKER_URL" "picker"
download_file "$EMOJI_DB_URL" "database"

echo "Download completed successfully!"
