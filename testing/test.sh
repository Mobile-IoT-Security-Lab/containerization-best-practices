#!/bin/zsh

# RUN ME with "sh test-aux <docker-compose id>"

if [[ $1 == 36 ]]; then
   exit
fi


clear


NEXT=`expr $1 + 1`
echo $NEXT

# osascript -e "tell application \"Terminal\"" -e "do script \"sh /Users/enrico/Desktop/containerization-best-practices/testing/test-aux.sh $NEXT\"" -e "end tell"