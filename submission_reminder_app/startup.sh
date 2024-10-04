#!/bin/bash

# Startup script for the Reminder App

# Define paths to necessary files and directories
CONFIG_FILE="./config/config.env"
FUNCTIONS_FILE="./modules/functions.sh"
SUBMISSIONS_FILE="./assets/submissions.txt"
REMINDER_SCRIPT="./reminder.sh"

# Function to check if required files exist
function check_files {
    if [[ ! -f "$CONFIG_FILE" ]]; then
        echo "Error: $CONFIG_FILE not found!"
        exit 1
    fi

    if [[ ! -f "$FUNCTIONS_FILE" ]]; then
        echo "Error: $FUNCTIONS_FILE not found!"
        exit 1
    fi

    if [[ ! -f "$SUBMISSIONS_FILE" ]]; then
        echo "Error: $SUBMISSIONS_FILE not found!"
        exit 1
    fi

    if [[ ! -f "$REMINDER_SCRIPT" ]]; then
        echo "Error: $REMINDER_SCRIPT not found!"
        exit 1
    fi
}

# Function to start the reminder app
function start_reminder_app {
    echo "Starting the Reminder App..."
    bash "$REMINDER_SCRIPT"
}

