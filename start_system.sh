#!/bin/bash
project_path=$(pwd)
cd ..
git clone https://github.com/bennyrottenberg/jenkins_configuration
cd $project_path
docker build -t aurora/ssh-agent-python:latest .
docker-compose down
docker-compose up -d