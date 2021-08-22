FROM node:10
ARG DEVOPS_LEVEL=HARD
MAINTAINER Yoav G
WORKDIR /usr/app
COPY . .
RUN npm install & echo "NEW arg: ${DEVOPS_LEVEL}" & echo "NEW arg: ${DEVOPS_LEVEL}" >YG.txt
ENV ENVIRONMENT PRODUCTION
CMD [ "node", "index.js" ]