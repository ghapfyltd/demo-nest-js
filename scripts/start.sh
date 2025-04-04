#!/bin/bash
cd /home/ec2-user/nest-app
pm2 delete nest-app || true
pm2 start dist/main.js --name nest-app
pm2 save
