#!/bin/bash
if [ -f .env ]; then
  export $(echo $(cat .env | sed 's/#.*//g'| xargs) | envsubst)
else
    echo "AGENT_NAME=ssh-agent-python" > .env
    echo "AGENT_TAG=latest" >> .env
    echo "JENKINS_TAG=lts" >> .env
fi
cat .env
project_path=$(pwd)
cd ..
git clone https://github.com/bennyrottenberg/jenkins_configuration
cd $project_path
echo "build agent docker ..."
docker build -t aurora/${AGENT_NAME}:${AGENT_TAG} .
docker-compose down
echo "run docker-compose up -d .."
docker-compose up -d
