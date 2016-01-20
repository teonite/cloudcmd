FROM node

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app/
RUN npm install --production
COPY . /usr/src/app

RUN mkdir /s
RUN mv /usr/src/app/config.json /root/.cloudcmd.json
VOLUME ["/s"]

EXPOSE 8000

CMD [ "npm", "start" ]

