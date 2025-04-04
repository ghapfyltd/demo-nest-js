#!/bin/bash

cd /home/ec2-user/nest-app


# ✅ Now install dependencies
npm install

# ✅ Now pull and write .env securely
aws ssm get-parameter \
  --name "/prod/nestjs/env" \
  --with-decryption \
  --query "Parameter.Value" \
  --output text > .env

# ✅ Secure the .env file
chmod 600 .env
