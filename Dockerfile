FROM node:latest
RUN apk --no-cache nodejs npm

WORKDIR /app

COPY . /app

COPY package.json /app

RUN npm install

EXPOSE 8081

ENTRYPOINT [ "node" ]

CMD ["index.js"]


