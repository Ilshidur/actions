FROM mhart/alpine-node:10.16.3

LABEL "com.github.actions.name"="Jenkins/job/build"
LABEL "com.github.actions.description"="Tiggers a Jenkins build."
LABEL "com.github.actions.icon"="list"
LABEL "com.github.actions.color"="red"

LABEL "repository"="https://github.com/Ilshidur/actions"
LABEL "homepage"="https://github.com/Ilshidur/actions/jenkins/job/build"
LABEL "maintainer"="Ilshidur <ilshidur@gmail.com>"
LABEL "version"="0.0.1"

ADD entrypoint.js package.json package-lock.json /
RUN npm ci
RUN chmod +x /entrypoint.js

ENTRYPOINT ["node", "/entrypoint.js"]
