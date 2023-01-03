#!/bin/bash

git clone https://github.com/bennyrottenberg/jenkins_configuration
docker build -t aurora/ssh-agent-python:latest .
docker-compose down
docker-compose up -d