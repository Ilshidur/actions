#!/bin/sh

set -eu

# Check if arguments provided
if (( $# != 1 ))
then

# If argument provided, override the Discord message.

echo Sending $*

# TODO: Overriding
# payload={\"username\": \"$GITHUB_ACTION\", \"text\": \"$GITHUB_REPOSITORY/$GITHUB_WORKFLOW triggered by $GITHUB_ACTOR ($GITHUB_EVENT_NAME) :\n$*\", \"icon_url\": \"https://raw.githubusercontent.com/quintessence/slack-icons/master/images/github-logo-slack-icon.png\"}
curl -X POST --data-urlencode "" $DISCORD_WEBHOOK

else

# If argument NOT provided, let Discord show the event informations.

echo Sending event informations

echo $(cat $GITHUB_EVENT_PATH)

curl -X POST -H "Content-Type: application/json" --data "$(cat $GITHUB_EVENT_PATH)" $DISCORD_WEBHOOK/github

fi
