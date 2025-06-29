#!/bin/bash
cd /home/ec2-user/my-node-app

# Start the application using PM2
pm2 start app.js --name "my-node-app"
pm2 save  # Save PM2 configuration for auto-restart on reboot
