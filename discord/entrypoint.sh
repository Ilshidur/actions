#!/bin/sh

set -eu

# Check if arguments provided
if (( $# != 1 ))
then

# If argument provided, override the Discord message.

echo Sending $*

curl -X POST --data-urlencode "{ \"content\": \"$*\" }" $DISCORD_WEBHOOK

else

# If argument NOT provided, let Discord show the event informations.

echo Sending event informations

echo $(cat $GITHUB_EVENT_PATH)

curl -X POST -H "Content-Type: application/json" --data "$(cat $GITHUB_EVENT_PATH)" $DISCORD_WEBHOOK/github

fi
