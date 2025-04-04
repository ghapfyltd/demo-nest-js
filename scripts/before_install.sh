#!/bin/bash

# Fix permissions so ec2-user can delete old files
sudo chown -R ec2-user:ec2-user .

rm -rf /home/ec2-user/nest-app/*
