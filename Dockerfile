FROM node:10
ARG DEVOPS-LEVEL=HARD
MAINTAINER Yoav G
WORKDIR /usr/app
COPY . .
RUN npm install & echo "NEW arg: ${DEVOPS-LEVEL}" >YG.txt
ENV ENVIRONMENT PRODUCTION
CMD ["node", "index.js"]