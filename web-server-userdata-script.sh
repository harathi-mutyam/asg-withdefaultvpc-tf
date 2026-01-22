#!/bin/bash
# Update system packages
yum update -y

# Install Apache web server, wget, and unzip
yum install -y httpd wget unzip

# Start Apache and enable it on boot
systemctl start httpd
systemctl enable httpd

# Navigate to temporary directory
cd /tmp

# Download the website template
wget https://www.tooplate.com/zip-templates/2150_living_parallax.zip

# Unzip the template
unzip -o 2150_living_parallax.zip

# Copy website files to Apache document root
cp -r 2150_living_parallax/* /var/www/html/

# Set proper permissions
chown -R apache:apache /var/www/html/
chmod -R 755 /var/www/html/
