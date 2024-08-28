#!/bin/zsh

# RUN ME with "sh test-dataset-example.sh <docker-compose id> <good|bad>"

# initialize the path of the docker-compose files
BAD_PATH="docker-compose-files/bad-compose/bad_docker-compose"
GOOD_PATH="docker-compose-files/good-compose/good_docker-compose"
N=$1 #example number passed as argument
EXT=".yaml"
BENCHMARK_PATH="testing/dockerprova/docker-compose.yml"


# Check if the argument is "good" or "bad"
if [ $2 = "good" ]; then
    MY_PATH=$GOOD_PATH$N$EXT
else
    MY_PATH=$BAD_PATH$N$EXT
    # code $MY_PATH
fi

# Copy the selected docker-compose file to the benchmark path
cp $MY_PATH $BENCHMARK_PATH

# Remove all images and containers
docker images | awk 'NR>1{print $3}' | xargs docker rmi -f
docker container ls -a | awk 'NR>1{print $1}' | xargs docker rm -f

# Build every image in the docker-compose file, but do not start them
cd testing/dockerprova
docker-compose up --build --no-start

# Run the dockle tests
echo; echo
echo "\033[1m DOCKLE RESULTS for the $2 image: \033[0m"
docker images | awk 'NR>1{print $1}' | xargs dockle #--timeout 600s

# Run the trivy tests
echo; echo
echo "\033[1m TRIVY RESULTS for the $2 image: \033[0m"
docker images | awk 'NR>1{print $1}' | xargs trivy image

# echo "\033[1m\n🐳docker config result: \033[0m"
docker-compose -f docker-compose.yml config #--quiet && printf "🐳✅OK\n" || printf "🐳❌ERROR\n"
cd ../..