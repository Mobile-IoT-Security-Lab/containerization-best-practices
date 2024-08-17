#!/bin/zsh

# RUN ME with "sh test-aux <docker-compose id>"

clear

if [[ $(uname -s) == "Darwin" ]]; then
   open -a Docker
   echo "Opening Docker Desktop..."
fi

if [[ $DOCKER_CONTENT_TRUST == 0 ]]; then
   export DOCKER_CONTENT_TRUST=1
fi

sh testing/test-dataset-example.sh $1 bad
echo "--------------------------------------------------------------------------------------------"
sh testing/test-dataset-example.sh $1 good

# ids are from 0 to 35