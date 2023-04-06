FROM node:16.17.0

WORKDIR /app

COPY ./package.json ./
COPY ./yarn.lock ./

RUN yarn install

COPY ./.meshrc.yml ./

RUN yarn build

EXPOSE 4000

CMD ["yarn", "start"]
