#!/bin/zsh

###
# non funzione perchè runnano tutti in parallelo e cercano di accedere tutti lo stesso file
###

# RUN ME with "sh test-all <start id> <end id>"

# START=$1
# if [ -z "$2" ]; then
#    END=35
# else
#    END=$2
# fi

# echo "Testing IDs from $START to $END"

# for((i=$START; i<=$END; i++));
# do
#    osascript -e "tell application \"Terminal\"" -e "do script \"sh /Users/enrico/Desktop/containerization-best-practices/testing/test-aux.sh $i\"" -e "end tell"
#    # echo 🧪testing id $i
# done
