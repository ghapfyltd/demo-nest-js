#!/bin/bash

cd /home/ec2-user/nest-app

# Install dependencies
npm install

# Fetch .env from AWS SSM Parameter Store
aws ssm get-parameter \
  --name "/prod/nestjs/env" \
  --with-decryption \
  --query "Parameter.Value" \
  --output text > .env

# Secure the .env file
chmod 600 .env
