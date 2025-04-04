#!/bin/bash

cd /home/ec2-user/nest-app

# Make sure ec2-user owns everything
chown -R ec2-user:ec2-user .

# Install dependencies as ec2-user
npm install

# Pull .env from SSM Parameter Store
aws ssm get-parameter \
  --name "/prod/nestjs/env" \
  --with-decryption \
  --query "Parameter.Value" \
  --output text > .env

# Restrict permissions
chmod 600 .env
