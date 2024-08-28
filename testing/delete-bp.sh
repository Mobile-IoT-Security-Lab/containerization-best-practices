#!/bin/zsh

BAD_PATH=bad-compose/bad_docker-compose
GOOD_PATH=good-compose/good_docker-compose
EXTENSION=.yaml

mv $BAD_PATH$1$EXTENSION $BAD_PATH$2$EXTENSION
mv $GOOD_PATH$1$EXTENSION $GOOD_PATH$2$EXTENSION