#!/bin/bash

# Update and upgrade system
echo "Updating system..."
sudo apt update && sudo apt upgrade -y

# Install necessary packages
echo "Installing Nginx, Fail2Ban, and UFW..."
sudo apt install -y nginx fail2ban ufw

# Configure UFW
echo "Configuring Firewall..."
sudo ufw allow OpenSSH
sudo ufw allow 'Nginx Full'
sudo ufw enable

# SSH Hardening
echo "Hardening SSH..."
sudo sed -i 's/#Port 22/Port 2222/' /etc/ssh/sshd_config
sudo sed -i 's/PermitRootLogin yes/PermitRootLogin no/' /etc/ssh/sshd_config
sudo systemctl restart sshd

# Create a new user with sudo access
echo "Creating new user 'devops'..."
sudo adduser devops --gecos "DevOps User,,," --disabled-password
echo "devops:password123" | sudo chpasswd  #please edit this password
sudo usermod -aG sudo devops

echo "Server setup complete!"
