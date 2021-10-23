FROM postman/newman:alpine

LABEL maintainer="parizat915@gmail.com"

WORKDIR /etc/newman

RUN npm install -g newman-reporter-htmlextra 
RUN npm install -g newman-reporter-testrail

ENTRYPOINT [ "newman" ]