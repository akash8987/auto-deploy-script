#!/bin/bash

APP_DIR="/var/www/app"
SERVICE_NAME="app-service"

cd "$APP_DIR" || exit 1

git pull origin main

systemctl restart "$SERVICE_NAME"
