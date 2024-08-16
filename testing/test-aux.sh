#!/bin/zsh

# RUN ME with "sh test-aux <docker-compose id>"

if [[ $(uname -s) == "Darwin" ]]; then
   open -a Docker
   echo "Opening Docker Desktop..."
fi

sh test-dataset-example.sh $1 bad
sh test-dataset-example.sh $1 good

# ids are from 0 to 35