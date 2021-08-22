ARG DEVOPS

FROM node:10
ARG DEVOPS
MAINTAINER Yoav G
WORKDIR /usr/app
COPY . .
RUN npm install & echo "NEW arg ${DEVOPS}" >YG.txt
ENV ENVIRONMENT PRODUCTION
CMD ["node", "index.js"]