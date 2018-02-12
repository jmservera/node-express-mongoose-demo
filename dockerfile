FROM node:carbon


COPY package.json /tmp/package.json

RUN cd /tmp && npm install
RUN mkdir -p /usr/app && cp -a /tmp/node_modules /usr/app/

WORKDIR /usr/app

COPY . .

EXPOSE 3000

CMD ["npm","start"]


