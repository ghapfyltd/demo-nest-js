#!/bin/bash

# Ensure the app directory exists
mkdir -p /home/ec2-user/nest-app

# Give ownership to ec2-user
chown -R ec2-user:ec2-user /home/ec2-user/nest-app

# Clean up old files (now that ec2-user owns it)
rm -rf /home/ec2-user/nest-app/*
