#!/bin/bash
cd /home/ec2-user/my-node-app

# Stop the application using PM2
pm2 stop my-node-app || true    # || true prevents script failure if app not running
pm2 delete my-node-app || true  # Clean up PM2 process list
