#!/bin/bash
cd /home/ec2-user/my-node-app

# Install Node.js if not present
if ! command -v node &> /dev/null; then
    # Use NodeSource repository for latest Node.js
    curl -fsSL https://rpm.nodesource.com/setup_18.x | sudo bash -
    sudo yum install -y nodejs
fi

# Install PM2 process manager globally
sudo npm install -g pm2

# Install application dependencies (production only)
npm install --production
