#!/bin/bash

# Update system packages
echo "Updating system packages..."
yum update -y

# Install Apache web server if not already installed
if ! command -v httpd &> /dev/null; then
    echo "Installing Apache web server..."
    yum install -y httpd
fi

# Install other dependencies if needed
echo "Installing additional dependencies..."

# Make sure Apache is enabled to start on system boot
echo "Enabling Apache service..."
systemctl enable httpd

echo "Dependencies installation completed."