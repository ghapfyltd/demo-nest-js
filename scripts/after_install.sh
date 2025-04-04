#!/bin/bash

cd /home/ec2-user/nest-app

# Make sure the deploy user owns the files
sudo chown -R ec2-user:ec2-user .

# Install dependencies
npm install

# Pull .env from SSM
aws ssm get-parameter \
  --name "/prod/nestjs/env" \
  --with-decryption \
  --query "Parameter.Value" \
  --output text > .env

# Secure the .env file
chmod 600 .env
