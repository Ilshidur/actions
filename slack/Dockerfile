FROM debian:9.5-slim

LABEL "com.github.actions.name"="Slack"
LABEL "com.github.actions.description"="Outputs a message to Slack."
LABEL "com.github.actions.icon"="slack"
LABEL "com.github.actions.color"="purple"

LABEL "repository"="https://github.com/Ilshidur/actions"
LABEL "homepage"="https://github.com/Ilshidur/actions"
LABEL "maintainer"="Ilshidur <ilshidur@gmail.com>"
LABEL "version"="0.0.1"

RUN apt-get update && apt-get install -y curl

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
