#!/bin/bash
cd /home/ec2-user/nest-app
npm install
aws ssm get-parameter \
  --name "/prod/nestjs/env" \
  --with-decryption \
  --query "Parameter.Value" \
  --output text > .env
