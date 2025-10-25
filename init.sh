#!/bin/bash

# Exit immediately if any command fails
set -e

directories=(
    "data/access"
    "data/custom_ssl"
    "data/letsencrypt-acme-challenge"
    "data/logs"
    "data/nginx"
    "letsencrypt"
)

for dir in "${directories[@]}"; do
    mkdir -p "$dir"
done

bash ./update-geolite-db.sh
