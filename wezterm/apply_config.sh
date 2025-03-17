#!/bin/bash

# variables
APP_NAME="wezterm"
CONFIG_FILE="wezterm.lua"
TARGET_DIR="$HOME/.config/wezterm"
SCRIPT_DIR="."

# check if app is installed
is_app_installed() {
	echo "🧐 Checking if $APP_NAME is installed..."
	if ! command -v "$APP_NAME" &> /dev/null; then
		echo "❌ $APP_NAME is not installed."
		exit 1
	else
		echo "✅ $APP_NAME is installed."
	fi
}

# check if config file exist
is_config_file_exist() {
    if [ -f "$TARGET_DIR/$CONFIG_FILE" ]; then
        echo "✅ Configuration file found: $TARGET_DIR/$CONFIG_FILE"
    else
        echo "⚠️ Configuration file not found. A new one will be copied."
    fi
}

# create a backup of the old config file
backup_old_config_file() {
    if [ -f "$TARGET_DIR/$CONFIG_FILE" ]; then
        TIMESTAMP=$(date +%Y%m%d_%H%M%S)
        BACKUP_FILE="$TARGET_DIR/${CONFIG_FILE}.backup_$TIMESTAMP"
        mv "$TARGET_DIR/$CONFIG_FILE" "$BACKUP_FILE"
        echo "📂 Backup created: $BACKUP_FILE"
    fi
}

# copy new config file to target directory
copy_new_config_file() {
    if [ ! -d "$TARGET_DIR" ]; then
        echo "📂 Creating target directory: $TARGET_DIR"
        mkdir -p "$TARGET_DIR"
    fi

    if [ -f "$SCRIPT_DIR/$CONFIG_FILE" ]; then
        cp "$SCRIPT_DIR/$CONFIG_FILE" "$TARGET_DIR/$CONFIG_FILE"
        echo "✅ New configuration copied to $TARGET_DIR."
    else
        echo "❌ Configuration file not found in repository."
        exit 1
    fi
}

# execute functions
is_app_installed
is_config_file_exist
backup_old_config_file
copy_new_config_file
