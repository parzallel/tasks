#!/bin/bash


echo -e "\n>>> CPU Load:" 
uptime

echo -e "\n>>> Memory Usage:"
free -h

echo -e "\n>>> Disk Usage:"
df -h --total | grep total
echo -e "\n=============================================="

echo " - Installing Nginx"

sudo apt update -y
sudo apt install nginx -y
echo -e "\n=============================================="

echo " - Starting and Enabling Nginx"

sudo systemctl enable nginx
echo -e "\n=============================================="
sudo systemctl start nginx

echo " - Creating Simple HTML Page ...."
echo " - Html page created successfully!"
echo -e "\n=============================================="

sudo bash -c 'cat > /var/www/html/index.html <<EOF
<!DOCTYPE html>
<html>
<head>
    <title>Server is Running</title>
</head>
<body>
    <h1>Welcome to My Ubuntu Nginx Server</h1>
    <p>Nginx is successfully installed and running.</p>
</body>
</html>
EOF'

echo " - Checking Nginx Status"

sudo systemctl status nginx --no-pager

echo " - Nginx setup completed successfully! You can access the server's IP address in your browser to see the welcome page."
