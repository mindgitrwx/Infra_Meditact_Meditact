# Dockerfile 
FROM node:12

WORKDIR /usr/src/app

COPY package*.json ./

MAINTAINER jonghyeon.rw@gmail.com 

RUN npm install && \
	apt-get -y update && \
	apt-get install -y vim && \
	apt-get install -y telnet && \
	apt-get install -y wget

RUN python -m pip install --upgrade pip 
COPY . .

EXPOSE 8080
CMD ["node", "server.js"]

