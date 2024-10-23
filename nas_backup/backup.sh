#!/bin/bash

# Function to handle errors
handle_error() {
    echo "An error occurred on line $1"
    exit 1
}

# Trap errors and call handle_error function
trap 'handle_error $LINENO' ERR

# Set default values
generate_log=true
backup_to_nas=true

# Set backup variables
set_variables() {
    current_date_time=$(date +"%d-%m-%Y_%H-%M")
    
    log_file="/var/log/backup.log"

    home_server_path="/home/home_server"
    nas_path="/home/nas"
    backup_path="$nas_path/docker-backup-$current_date_time"
}

# set backup variables
set_variables () {
    current_date_time=$(date +"%d-%m-%Y_%H-%M")
    file_name="$repository_name-backup-$current_date_time"
    path="/home/github_nas_backup/backup"
    backup_path="$path/$file_name"
    
}

# Backup function
backup() {
    echo "Starting backup..."
    mkdir -p "$backup_path" || { echo "Failed to create backup folder"; exit 1; }

    # Stop containers to ensure a consistent backup
    docker-compose stop vaultwarden wg-easy pihole yacht

    echo "Backing up project directory..."
    cp -r $home_server_path $backup_path || { echo "Failed to backup home server to nas"; exit 1; }


    # Restart containers
    docker-compose start vaultwarden wg-easy pihole yacht

    echo "Backup completed successfully."
}


set_variables
backup
