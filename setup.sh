#!/bin/bash

# Define the source and destination paths
SOURCE_DIR="$(pwd)"
DEST_DIR="/usr/local/bin"

# Move the scripts to /usr/local/bin
echo "Moving scripts to $DEST_DIR..."
sudo cp "$SOURCE_DIR/mark-junk-read.sh" "$DEST_DIR/mark-junk-read.sh"
sudo cp "$SOURCE_DIR/mark-junk-read.scpt" "$DEST_DIR/mark-junk-read.scpt"

# Add the cron job
echo "Setting up the cron job..."
(crontab -l 2>/dev/null; echo "0 * * * * $DEST_DIR/mark-junk-read.sh") | crontab -

echo "Setup complete!"
