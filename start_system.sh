#!/bin/bash
pwd
project_path=$(pwd)
echo "project_path $project_path"
cd ..
pwd
git clone https://github.com/bennyrottenberg/jenkins_configuration
cd $project_path
pwd
docker build -t aurora/ssh-agent-python:latest .
docker-compose down
docker-compose up -d