#!/bin/zsh

# RUN ME with "sh test-dataset-example.sh <docker-compose id> <good|bad>"

# initialize the path of the docker-compose files
BAD_PATH="../docker-compose-files/bad-compose/bad_docker-compose"
GOOD_PATH="../docker-compose-files/good-compose/good_docker-compose"
N=$1 #example number passed as argument
EXT=".yml"
BENCHMARK_PATH="dockerprova/docker-compose.yml"


# Check if the argument is "good" or "bad"
if [ $2 = "good" ]; then
    MY_PATH=$GOOD_PATH$N$EXT
else
    MY_PATH=$BAD_PATH$N$EXT
fi

# Copy the selected docker-compose file to the benchmark path
cp $MY_PATH $BENCHMARK_PATH

# Remove all images and containers
docker images | awk 'NR>1{print $3}' | xargs docker rmi -f
docker container ls -a | awk 'NR>1{print $1}' | xargs docker rm -f

# Run and build the docker-compose file
cd dockerprova
docker-compose up --build

# Run the dockle tests
echo; echo
echo '\033[1m DOCKLE RESULTS: \033[0m'
docker images | awk 'NR>1{print $1}' | xargs dockle

# Run the trivy tests
echo; echo
echo '\033[1m TRIVY RESULTS: \033[0m'
docker images | awk 'NR>1{print $3}' | xargs trivy image