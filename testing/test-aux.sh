#!/bin/zsh

# RUN ME with "sh test-aux <docker-compose id>"

if [[ $1 == 37 ]]; then
   exit
fi


clear
cd Desktop/containerization-best-practices

if [[ $(uname -s) == "Darwin" ]]; then
   open -a Docker
   echo "Opening Docker Desktop..."
fi

if [[ $DOCKER_CONTENT_TRUST == 0 ]]; then
   export DOCKER_CONTENT_TRUST=1
fi

echo "\033[1m\n 🧪testing bad id $1 ... \033[0m"
sh testing/test-dataset-example.sh $1 bad
echo "\033[1m 🧪testing good id $1 ... \033[0m"
sh testing/test-dataset-example.sh $1 good

# NEXT=`expr $1 + 1`

# osascript -e "tell application \"Terminal\"" -e "do script \"sh /Users/enrico/Desktop/containerization-best-practices/testing/test-aux.sh $NEXT\"" -e "end tell"