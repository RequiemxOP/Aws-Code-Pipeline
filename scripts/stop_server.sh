#!/bin/bash

# Stop the Apache web server
echo "Stopping Apache web server..."

# Check if Apache is running before attempting to stop it
if systemctl is-active --quiet httpd; then
    systemctl stop httpd
    echo "Apache web server stopped successfully."
else
    echo "Apache web server is not running."
fi

# Additional cleanup if needed
echo "Performing any necessary cleanup..."

echo "Application stopped successfully."