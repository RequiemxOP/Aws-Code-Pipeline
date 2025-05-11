#!/bin/bash

# Start the Apache web server
echo "Starting Apache web server..."
systemctl start httpd

# Check if Apache started successfully
if systemctl is-active --quiet httpd; then
    echo "Apache web server started successfully."
else
    echo "Failed to start Apache web server."
    exit 1
fi

# Set proper permissions for web files
echo "Setting proper permissions for web files..."
chown -R apache:apache /var/www/html/
chmod -R 755 /var/www/html/

echo "Application started successfully."